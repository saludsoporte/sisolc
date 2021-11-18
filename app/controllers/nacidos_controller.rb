class NacidosController < ApplicationController
  before_action :login_required 
  # GET /nacidos
  # GET /nacidos.xml
  def index
  	@paciente_id = params[:paciente]
    if @paciente_id != nil
		@nacidos = Nacido.find(:all, :conditions=>{:paciente_id => @paciente_id}, :order=>"id DESC")
	else
		if [7,8,10,18,19,20].include?(current_user.rol_id)
			@nacidos = Nacido.find(:all, :order=>"id DESC")
		else
			@nacidos = Nacido.find(:all, :conditions=>{:user_id => current_user.id}, :order=>"id DESC")
		end		
	end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nacidos }
    end
  end

  # GET /nacidos/1
  # GET /nacidos/1.xml
  def show
    @nacido = Nacido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nacido }
    end
  end

  # GET /nacidos/new
  # GET /nacidos/new.xml
  def new
    @nacido = Nacido.new
	@nacido.paciente_id = params[:paciente]
	@nacido.atencion_id = params[:atencion]
	if @nacido.paciente_id == nil
		redirect_to ("/")
	else
		if @nacido.atencion_id == nil
			aten = Atencion.find(:last, :conditions=>{:paciente_id=>@nacido.paciente_id}, :order=>"id")
			if aten == nil || aten.fechaeg != nil
				redirect_to(new_atencion_path(:paciente=>@nacido.paciente_id))
				return
			else
				@nacido.atencion_id = aten.id
			end	
		end
		respond_to do |format|
		format.html # new.html.erb
		format.xml  { render :xml => @evolucion }
		end
	end
  end

  # GET /nacidos/1/edit
  def edit
    @nacido = Nacido.find(params[:id])
  end

  # POST /nacidos
  # POST /nacidos.xml
  def create
    @nacido = Nacido.new(params[:nacido])

    respond_to do |format|
      if @nacido.save
        flash[:notice] = 'Nacido fue creado.'
        format.html { redirect_to(paciente_path(@nacido.paciente_id)) }
        format.xml  { render :xml => @nacido, :status => :created, :location => @nacido }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nacido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nacidos/1
  # PUT /nacidos/1.xml
  def update
    @nacido = Nacido.find(params[:id])

    respond_to do |format|
      if @nacido.update_attributes(params[:nacido])
        flash[:notice] = 'Nacido fue actualizado.'
        format.html { redirect_to(paciente_path(@nacido.paciente_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nacido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nacidos/1
  # DELETE /nacidos/1.xml
  def destroy
    @nacido = Nacido.find(params[:id])
    @nacido.destroy

    respond_to do |format|
      format.html { redirect_to(nacidos_url) }
      format.xml  { head :ok }
    end
  end
end
