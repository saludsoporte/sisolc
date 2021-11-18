class PedsController < ApplicationController
  before_action :login_required
  # GET /peds
  # GET /peds.xml
  def index
        logger.debug "******* peds GET /peds"
        logger.debug "params: #{params}"
        @periodos = Ped.find_by_sql ["select distinct extract(year from fecha) ANO, extract(month from fecha) MES from peds order by ano,mes"]
        #@peds = Ped.find_by_sql(["select * from peds where extract(year from fecha) = ? and extract(month from fecha) = ? order by id",
        #params[:ano].to_i,params[:mes].to_i])
        @peds = Ped.where("extract(year from fecha) = ? and extract(month from fecha) = ?",params[:ano].to_i,params[:mes].to_i)
        
        respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @peds }
        end
  end

  # GET /peds/1
  # GET /peds/1.xml
  def show
	logger.debug "** peds GET /peds/1"
    @ped = Ped.find(params[:id])
    @detpeds = Detped.find_by_sql(["select * from detpeds where ped_id = ?", @ped.id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ped }
    end
  end

  # GET /peds/new
  # GET /peds/new.xml

  def new
    @ped = Ped.new
        @tiposped = case
                                when [9,15].include?(current_user.rol_id)
                                        13
                                when [10].include?(current_user.rol_id) || [165].include?(current_user.id)
                                        [13,14,15,16,17,39]
                                else
                                        if [5].include?(current_user.area_id)
                                                39
                                        else
                                                (14..17)
                                        end
                                end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ped }
    end
  end

  # GET /peds/1/edit
  def edit
    @ped = Ped.find(params[:id])
        @tiposped = case
                when [9,15].include?(current_user.rol_id)
                        13
                when [10].include?(current_user.rol_id) || [165].include?(current_user.id)
                        [13,14,15,16,17,39]
                else
                        if [5].include?(current_user.area_id)
                                39
                        else
                                (14..17)
                        end
                end
  end

  # POST /peds
  # POST /peds.xml
  def create
    @ped = Ped.new(params[:ped])

    respond_to do |format|
      if @ped.save
        flash[:notice] = 'Pedido fue creado.'
        format.html { redirect_to(@ped) }
        format.xml  { render :xml => @ped, :status => :created, :location => @ped }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ped.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /peds/1
  # PUT /peds/1.xml
  def update
    @ped = Ped.find(params[:id])
        @tiposped = case
                                when [9,15].include?(current_user.rol_id)
                                        13
                                when [10].include?(current_user.rol_id) || [165].include?(current_user.id)
                                        [13,14,15,16,17,39]
                                else
                                        (14..17)
                                end
        solicitud_id = params[:ped][:renglon_id].to_i
        estadonuevo = params[:ped][:estado_id].to_i
        if (@ped.tipo_id == 13 || @ped.tipo_id == nil) and (params[:ped][:renglon_id] == nil || params[:ped][:renglon_id] == "" || (solicitud_id > 0 && Solicitud.find(:all,:conditions=>{:id=>solicitud_id}).size == 0))
                flash[:notice] = 'Error: No. de solicitud faltante o inexistente. Indicar 0 si no proviene de ninguna.'
                redirect_to("/")
                return
        end
        if estadonuevo == 9 && @ped.estado_id != estadonuevo
                if [10,15].include?(current_user.rol_id) || ([13].include?(current_user.rol_id) && [14,15,16,17].include?(@ped.tipo_id))
                        detpeds = Detped.find(:all,:conditions=>{:ped_id=>@ped.id})
                        @completo = true
                        @subtotal = 0.0
                        @total = 0.0
                        for detped in detpeds
                                detped.cancelado = detped.cantidad - detped.recibido
                                detped.estado_id = 9
                                if detped.cancelado != detped.cantidad
                                        @completo = false
                                        detped.estado_id = 12
                                        else
                                        detped.estado_id = 9
                                end
                                detped.importe = (detped.cantidad - detped.cancelado) * (detped.precio != nil ? detped.precio : 0.0)
                                detped.save
                                if detped.importe != nil
                                        @subtotal = @subtotal + detped.importe
                                        @total = @total + (detped.importe * detped.iva)
                                end
                        end
                        if !@completo
                                params[:ped][:estado_id] = 12.to_s
                        end
                        params[:ped][:subtotal] = @subtotal.to_s
                        params[:ped][:total] = @total.to_s
                        params[:ped][:iva] = (@total-@subtotal).to_s
                else
                        flash[:notice] = 'Error: Las cancelaciones de pedidos �nicamente proceden a nivel jefatura de Adquisiciones.'
                        redirect_to("/")
                end
        end
        if @ped.estado_id == 12 && ![10].include?(current_user.rol_id)
                if [15].include?(current_user.rol_id) || ([13].include?(current_user.rol_id) && [14,15,16,17].include?(@ped.tipo_id))
                        recibido = Detped.find(:all, :conditions => ["detpeds.ped_id = ? and detpeds.recibido > 0",@ped.id])
                end
                if (![15].include?(current_user.rol_id) && !([13].include?(current_user.rol_id) && [14,15,16,17].include?(@ped.tipo_id))) || recibido.size > 0
                        if estadonuevo != 9
                                flash[:notice] = 'Error: Intento de modificar un pedido que ya ha sido previamente aplicado.'
                                redirect_to("/")
                                return
                        end
                end
        end
    respond_to do |format|
      if @ped.update_attributes(params[:ped])
        flash[:notice] = 'Pedido fue actualizado.'
        format.html { redirect_to(@ped) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ped.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /peds/1
  # DELETE /peds/1.xml
  def destroy
    @ped = Ped.find(params[:id])
    @ped.destroy

    respond_to do |format|
      format.html { redirect_to(peds_url) }
      format.xml  { head :ok }
    end
  end



end
