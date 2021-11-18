class PacientesController < ApplicationController
  before_action :login_required 
  # GET /pacientes
  # GET /pacientes.xml
  def index
	@tipo = params[:tipo].to_i
	case
		when @tipo == 0
			@pacientes = Paciente.all(:order=>"id DESC")
		when [23,24].include?(@tipo)
		    @pacientes = Paciente.find(:all, :conditions=>["exists(select * from atencions where pacientes.id = atencions.paciente_id and fechaeg is null and tipo_id = ?)",@tipo], :order=>"id DESC")
	end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pacientes }
    end
  end

  # GET /pacientes/1
  # GET /pacientes/1.xml
  def show
    @paciente = Paciente.find(params[:id])
    @domicilio = Domicilio.where("paciente_id=?",@paciente.id).order(:id)
    @afiliacion = Afiliacion.find(:last, :conditions=>{:paciente_id=>@paciente.id},:order=>"id")
    @atencion = Atencion.find(:last, :conditions=>{:paciente_id=>@paciente.id},:order=>"id")
    @evolucion = @atencion == nil ? nil : Evolucion.find(:all, :conditions=>{:paciente_id=>@paciente.id},:order=>"id DESC")
    @nacido = @atencion == nil ? nil :Nacido.find(:all, :conditions=>{:paciente_id=>@paciente.id, :atencion_id=>@atencion.id},:order=>"id DESC")
    @pacnotas = Pacnota.find(:all,:conditions=>{:paciente_id=>@paciente.id},:order=>"id DESC")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paciente }
    end
  end

  # GET /pacientes/new
  # GET /pacientes/new.xml
  def new
    @paciente = Paciente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paciente }
    end
  end

  # GET /pacientes/1/edit
  def edit
    @paciente = Paciente.find(params[:id])
  end

  # POST /pacientes
  # POST /pacientes.xml
  def create
    @paciente = Paciente.new(params[:paciente])

    respond_to do |format|
      if @paciente.save
        flash[:notice] = 'El nuevo paciente fue agregado.'
        format.html { redirect_to(pacientes_path) }
        format.xml  { render :xml => @paciente, :status => :created, :location => @paciente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paciente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pacientes/1
  # PUT /pacientes/1.xml
  def update
    @paciente = Paciente.find(params[:id])

    respond_to do |format|
      if @paciente.update_attributes(params[:paciente])
        flash[:notice] = 'Paciente was successfully updated.'
        format.html { redirect_to(@paciente) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paciente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.xml
  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy

    respond_to do |format|
      format.html { redirect_to(pacientes_url) }
      format.xml  { head :ok }
    end
  end
end
