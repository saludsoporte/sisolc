class DomiciliosController < ApplicationController
  before_action :login_required 
  # GET /domicilios
  # GET /domicilios.xml
  def index
  	@paciente_id = params[:paciente]
    if @paciente_id != nil
		  @domicilios = Domicilio.find("paciente_id =?",@paciente_id).order(id: :DESC)
    else
		  if [10].include?(current_user.rol_id)
			  @domicilios = Domicilio.all
		  end    
    end
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @domicilios }
    end
  end

  # GET /domicilios/1
  # GET /domicilios/1.xml
  def show
    @domicilio = Domicilio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @domicilio }
    end
  end

  # GET /domicilios/new
  # GET /domicilios/new.xml
  def new
    @domicilio = Domicilio.new
	@domicilio.paciente_id = params[:paciente]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @domicilio }
    end
  end

  # GET /domicilios/1/edit
  def edit
    @domicilio = Domicilio.find(params[:id])
  end

  # POST /domicilios
  # POST /domicilios.xml
  def create
    @domicilio = Domicilio.new(params[:domicilio])

    respond_to do |format|
      if @domicilio.save
        flash[:notice] = 'El domicilio fue creado.'
        format.html { redirect_to(paciente_path(@domicilio.paciente_id)) }
        format.xml  { render :xml => @domicilio, :status => :created, :location => @domicilio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @domicilio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /domicilios/1
  # PUT /domicilios/1.xml
  def update
    @domicilio = Domicilio.find(params[:id])

    respond_to do |format|
      if @domicilio.update_attributes(params[:domicilio])
        flash[:notice] = 'Domicilio fue actualizado.'
        format.html { redirect_to(paciente_path(@domicilio.paciente_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @domicilio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /domicilios/1
  # DELETE /domicilios/1.xml
  def destroy
    @domicilio = Domicilio.find(params[:id])
    @domicilio.destroy

    respond_to do |format|
      format.html { redirect_to(domicilios_url) }
      format.xml  { head :ok }
    end
  end
end
