class RequisicionsController < ApplicationController
  before_action :login_required
  # GET /requisicions
  # GET /requisicions.xml
  def requistatus
    @requisicion = Requisicion.find(params[:id])
        @renglones = Renglon.find(:all, :conditions => {:requisicion_id => @requisicion.id}, :order=> "renglon")
        @articulos = Articulo.find(:all, :conditions => {:requisicion_id => @requisicion.id}, :order=> "renglon_id")
        @asignado = 0.0
        @renglones.each do |renglon|
                @articulos.each do |articulo|
                        if articulo.renglon_id == renglon.id && articulo.cantidad !=nil && articulo.precio != nil
                                renglon.importe = renglon.importe - (articulo.cantidad*articulo.precio)
                        end
                end
        end
        @articulos.each do |articulo|
                @asignado = @asignado + (articulo.precio*articulo.cantidad)
        end
        @peds = Ped.find(:all, :conditions => ["? in(requisicion_id,requi2_id,requi3_id,requi4_id)",@requisicion.id], :order=> "id")
  end

  def index
    if [4].include?(current_user.rol_id)
      @requisicions=Requisicion.all().order(estado_id: :desc)
               #@requisicions = Requisicion.find(:all, :order => "estado_id, id DESC")
    else
      @requisicions=Requisicion.all().order(id: :desc)
               #@requisicions = Requisicion.find(:all, :order => "id DESC")
    end
  end

  def reqaut
        if [4].include?(current_user.rol_id)
                @requisicions = Requisicion.find(:all, :conditions => {:estado_id => 6}, :order => "estado_id, id DESC")
        else
                @requisicions = Requisicion.find(:all, :conditions => {:estado_id => 6}, :order => "id DESC")
        end
  end

  def vistaimp
    logger.debug "visit ***********************"+params[:id]
    @requisicion = Requisicion.find(params[:id])
    @renglons = Renglon.where("requisicion_id = ?",params[:id]).order(:renglon)
    @reqnotas = Reqnotum.where("requisicion_id = ?",params[:id]).first
  end

  # GET /requisicions/1
  # GET /requisicions/1.xml
  def show   
    @requisicion = Requisicion.find(params[:id])
    @renglones = Renglon.where("requisicion_id = ? ",params[:id]).order(:renglon)    
    @reqnotas = Reqnotum.where("requisicion_id = ?",params[:id])       
  end
  # GET /requisicions/new
  # GET /requisicions/new.xml
  def new
        @ultimo = Requisicion.find_by_sql ["select id from requisicions where (id < 201237028 or id > 201237059) and id not in(201223135,201235033,201235034,201235035,201235036) order by id desc limit 1"]
        @ultimo.each do |ultimo|
        if ultimo.id >= 201254100
        flash[:notice] = 'El rango de numeros de req. otorgado por la DP se ha agotado favor de reportar con el Ing.FSS. Ultima:'+ultimo.id.to_s
                redirect_to("/")
        else
                @requisicion = Requisicion.new
                @requisicion.fuente_id = params[:fuente_id]
                @requisicion.clues_id = params[:clues_id]

                respond_to do |format|
                format.html # new.html.erb
                format.xml  { render :xml => @requisicion }
                end
        end
      end
  end
	
  # GET /requisicions/1/edit
  def edit
    @requisicion = Requisicion.find(params[:id])
        if ![1,3].include?(@requisicion.estado_id) && ![10].include?(current_user.rol_id) && !([4].include?(current_user.rol_id) && [2].include?(@requisicion.estado_id))
                flash[:notice] = 'No est&aacute; autorizado(a) a modificar esta requisici&oacute;n.'
                redirect_to("/")
        end
  end

  # POST /requisicions
  # POST /requisicions.xml
  def create
    @requisicion = Requisicion.new(params[:requisicion])

    respond_to do |format|
      if @requisicion.save
        flash[:notice] = 'Requisicion creada correctamente.'
        format.html { redirect_to(@requisicion) }
        format.xml  { render :xml => @requisicion, :status => :created, :location => @requisicion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requisicions/1
  # PUT /requisicions/1.xml
  def update
    @requisicion = Requisicion.find(params[:id])

    respond_to do |format|
      if @requisicion.update_attributes(params[:requisicion])
        flash[:notice] = 'Requisicion actualizada correctamente.'
                if [4].include?(current_user.rol_id)
                        format.html { redirect_to(requisicions_url) }
                else
                        format.html { redirect_to(@requisicion) }
                end
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicions/1
  # DELETE /requisicions/1.xml
  def destroy
    @requisicion = Requisicion.find(params[:id])
    @requisicion.destroy

    respond_to do |format|
      format.html { redirect_to(requisicions_url) }
      format.xml  { head :ok }
    end
  end


end
