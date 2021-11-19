class SolnotasController < ApplicationController
  before_action :login_required
  # GET /solnotas
  # GET /solnotas.xml
  def index
	if [10].include?(current_user.rol_id)
		@solnotas = Solnotum.all

		respond_to do |format|
		format.html # index.html.erb
		format.xml  { render :xml => @solnotas }
    end
	else
		redirect_to("/")
	end
  end

  # GET /solnotas/1
  # GET /solnotas/1.xml
  def show
	if [10].include?(current_user.rol_id)
		@solnota = Solnotum.find(params[:id])

		respond_to do |format|
		format.html # show.html.erb
		format.xml  { render :xml => @solnota }
		end
	else
		redirect_to("/")
	end
  end

  # GET /solnotas/new
  # GET /solnotas/new.xml
  def new
    @solnota = Solnotum.new
	@solicitud = params[:solicitud]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solnota }
    end
  end

  # GET /solnotas/1/edit
  def edit
	if [10].include?(current_user.rol_id)
		@solnota = Solnotum.find(params[:id])
	else
		redirect_to("/")
	end
  end

  # POST /solnotas
  # POST /solnotas.xml
  def create
    @solnota = Solnotum.new(params[:solnota])
	if @solnota.fecha == nil
		@solnota.fecha = Date.today
	end
    respond_to do |format|
      if @solnota.save
        flash[:notice] = 'Comentario agregado exitosamente.'
        format.html { redirect_to(solicitud_path(@solnota.solicitud_id)) }
        format.xml  { render :xml => @solnota, :status => :created, :location => @solnota }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @solnota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /solnotas/1
  # PUT /solnotas/1.xml
  def update
    @solnota = Solnotum.find(params[:id])

    respond_to do |format|
      if @solnota.update_attributes(params[:solnota])
        flash[:notice] = 'Solnota was successfully updated.'
        format.html { redirect_to(@solnota) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @solnota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /solnotas/1
  # DELETE /solnotas/1.xml
  def destroy
    @solnota = Solnotum.find(params[:id])
    @solnota.destroy

    respond_to do |format|
      format.html { redirect_to(solnotas_url) }
      format.xml  { head :ok }
    end
  end
end
