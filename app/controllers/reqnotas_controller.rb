class ReqnotasController < ApplicationController
  before_action :login_required
  # GET /reqnotas
  # GET /reqnotas.xml
  def index
	if [10].include?(current_user.rol_id)
		@reqnotas = Reqnota.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @reqnotas }
		end
	else
		redirect_to("/")
	end
  end

  # GET /reqnotas/1
  # GET /reqnotas/1.xml
  def show
	if [10].include?(current_user.rol_id)
		@reqnota = Reqnota.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.xml  { render :xml => @reqnota }
		end
	else
		redirect_to("/")
	end
  end

  # GET /reqnotas/new
  # GET /reqnotas/new.xml
  def new
    @reqnota = Reqnota.new
	@requisicion = params[:requisicion]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reqnota }
    end
  end

  # GET /reqnotas/1/edit
  def edit
	if [10].include?(current_user.rol_id)
		@reqnota = Reqnota.find(params[:id])
	else
		redirect_to("/")
	end
  end

  # POST /reqnotas
  # POST /reqnotas.xml
  def create
    @reqnota = Reqnota.new(params[:reqnota])
	if @reqnota.fecha == nil
		@reqnota.fecha = Date.today
	end
    respond_to do |format|
      if @reqnota.save
        flash[:notice] = 'El comentario fue agregado exitosamente.'
		if [4].include?(current_user.rol_id)
			format.html { redirect_to(edit_requisicion_path(@reqnota.requisicion_id)) }
		else
			format.html { redirect_to(requisicion_path(@reqnota.requisicion_id)) }
		end
		format.xml  { render :xml => @reqnota, :status => :created, :location => @reqnota }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reqnota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reqnotas/1
  # PUT /reqnotas/1.xml
  def update
    @reqnota = Reqnota.find(params[:id])

    respond_to do |format|
      if @reqnota.update_attributes(params[:reqnota])
        flash[:notice] = 'Reqnota was successfully updated.'
        format.html { redirect_to(@reqnota) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reqnota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reqnotas/1
  # DELETE /reqnotas/1.xml
  def destroy
    @reqnota = Reqnota.find(params[:id])
    @reqnota.destroy

    respond_to do |format|
      format.html { redirect_to(requisicion_path(@reqnota.requisicion_id)) }
      format.xml  { head :ok }
    end
  end
end

