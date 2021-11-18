class FianzasController < ApplicationController
 # GET /fianzas
  # GET /fianzas.xml
  def index
    @fianzas = Fianza.all().order(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fianzas }
    end
  end

  # GET /fianzas/1
  # GET /fianzas/1.xml
  def show
    @fianza = Fianza.find(params[:id])
	proceso = Proceso.find(@fianza.proceso_id).proceso
	@procesos = Proceso.find_by_sql ["select id from procesos where proceso = ?",proceso]
	if [1,3].include?(@fianza.estado_id)
		@peds = Ped.where("proceso_id in(?) and proveedor_id = ? and estado_id = 12 and (fianza_id is null or fianza_id = 0) and cp_id = 7",@procesos,@fianza.prov_id).order(:id)
	else
		@peds = Ped.where("fianza_id=?",@fianza.id).order(:id)
	end	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fianza }
    end
  end

  # GET /fianzas/new
  # GET /fianzas/new.xml
  def new
    @fianza = Fianza.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fianza }
    end
  end

  # GET /fianzas/1/edit
  def edit
    @fianza = Fianza.find(params[:id])
  end

  # POST /fianzas
  # POST /fianzas.xml
  def create
    @fianza = Fianza.new(params[:fianza])

    respond_to do |format|
      if @fianza.save
        flash[:notice] = 'Fianza fue creada.'
        format.html { redirect_to(@fianza) }
        format.xml  { render :xml => @fianza, :status => :created, :location => @fianza }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fianza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fianzas/1
  # PUT /fianzas/1.xml
  def update
    @fianza = Fianza.find(params[:id])
	  nuevoest = params[:fianza][:estado_id].to_i
	  nuevotipo = params[:fianza][:tipo_id].to_i
	  nuevomonto = params[:fianza][:monto].to_f
	  nuevasituacion = params[:fianza][:situacion].to_i
	  proceso = (@fianza.proceso_id != nil ? Proceso.find(@fianza.proceso_id).proceso : nil)
	  @procesos = Proceso.find_by_sql ["select id from procesos where proceso = ?",proceso]
	  if nuevasituacion == 35 || nuevasituacion == nil
	  if [1,3].include?(@fianza.estado_id)
	  	@peds = Ped.find(:all,:conditions=>["proceso_id in(?) and proveedor_id = ? and estado_id = 12 and (fianza_id is null or fianza_id = 0) and cp_id = 7",@procesos,@fianza.prov_id])
		if nuevoest == 12 
			montopeds = 0.0
			@peds.each do |ped|
				if nuevotipo != 1
					montopeds= montopeds+ped.subtotal
				else
					montopeds= montopeds+ped.total
				end
			end
			if montopeds > (nuevomonto/(nuevotipo == 1 ? 0.3 : 0.1))+0.51
				flash[:notice] = 'ERROR: Fianza no cubre el total del monto necesario. No fue aplicada.'
				redirect_to(@fianza)
				return
			else
				@peds.each do |ped|
					ped.fianza_id = @fianza.id
					ped.save
				end
			end
		end 
	else
		if @fianza.estado_id == 12 && nuevoest != 12
			@peds = Ped.find(:all,:conditions=>{:fianza_id=>@fianza.id})
			@peds.each do |ped|
				ped.fianza_id = nil
				ped.save
			end
		end	
	end
	end
    respond_to do |format|
      if @fianza.update_attributes(params[:fianza])
        flash[:notice] = 'Fianza fue actualizada.'
        format.html { redirect_to(@fianza) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fianza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fianzas/1
  # DELETE /fianzas/1.xml
  def destroy
    @fianza = Fianza.find(params[:id])
    @fianza.destroy

    respond_to do |format|
      format.html { redirect_to(fianzas_url) }
      format.xml  { head :ok }
    end
  end
end
