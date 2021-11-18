class ReordensController < ApplicationController
  before_action :login_required
  # GET /reordens
  # GET /reordens.xml
   
  def index
    @reordens = Reorden.all
	@reordens.each do |reorden|
		if reorden.vigenciai.blank? || reorden.vigenciaf.blank? || (reorden.vigenciai <= Date.today && reorden.vigenciaf >= Date.today)
			reorden.existencia = 0.0
			if reorden.almacen_id.blank?
				@existencias = Lote.find_by_sql ["select * from lotes where catalogo_id = ? and existencia > 0.0",reorden.catalogo_id]
			else
				@existencias = Lote.find_by_sql ["select * from lotes where catalogo_id = ? and existencia > 0.0 and almacen_id = ?",reorden.catalogo_id,reorden.almacen_id]
			end
			@existencias.each do |lote|
				reorden.existencia = reorden.existencia + lote.existencia
			end
		else
			reorden.existencia = nil
		end
		reorden.save
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reordens }
    end
  end

  # GET /reordens/1
  # GET /reordens/1.xml
  def show
    @reorden = Reorden.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reorden }
    end
  end

  # GET /reordens/new
  # GET /reordens/new.xml
  def new
    @reorden = Reorden.new
  end

  def carga
    @catalogos=Catalogo.where("partida_id = ?",params[:catalogo_id]).order(:clave)
    respond_to do |format|    
      format.js  { render :json => @catalogos }
    end
 
  end

  # GET /reordens/1/edit
  def edit
    @reorden = Reorden.find(params[:id])
  end

  # POST /reordens
  # POST /reordens.xml
  def create

    logger.debug "************ almacen "+reordens_params[:almacen_id].to_s
    @almacen = Almacen.find(reordens_params[:almacen_id])
    @partida = Partida.find(reordens_params[:partida_id])
    @user = User.find(reordens_params[:user_id])
    @estado = Estado.last
    @tipo = Tipo.find(reordens_params[:tipo_id])
    @catalogo = Catalogo.find(reordens_params[:catalogo_id])
    
    @reorden = @almacen.reordens.create(reordens_params)
    @reorden = @partida.reordens.create(reordens_params)
    @reorden = @user.reordens.create(reordens_params)
    @reorden = @estado.reordens.create(reordens_params)
    @reorden = @tipo.reordens.create(reordens_params)
    @reorden = @catalogo.reordens.create(reordens_params)
      
    logger.debug "**********************"+reordens_params[:partida_id].to_s
    logger.debug "**********************"+reordens_params[:catalogo_id].to_s
    
    redirect_to(@reorden)
  end

  # PUT /reordens/1
  # PUT /reordens/1.xml
  def update
    @reorden = Reorden.find(params[:id])

    respond_to do |format|
      if @reorden.update(reordens_params)
        flash[:notice] = 'Alerta fue actualizada.'
        format.html { redirect_to(reordens_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reorden.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reordens/1
  # DELETE /reordens/1.xml
  def destroy
    @reorden = Reorden.find(params[:id])
    @reorden.destroy

    respond_to do |format|
      format.html { redirect_to(reordens_url) }
      format.xml  { head :ok }
    end
  end

  private
  def reordens_params
   params.require(:reorden).permit(:user_id,:nombre,:partida_id,:catalogo_id,:punto,:tipo_id,
      :almacen_id,:vigenciai,:vigenciaf)
  end
end