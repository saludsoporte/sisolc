class EvolucionsController < ApplicationController
  before_action :login_required 
  # GET /evolucions
  # GET /evolucions.xml
  def index
  	@paciente_id = params[:paciente]
    if @paciente_id != nil
		  @evolucions = Evolucion.find(:all, :conditions=>{:paciente_id => @paciente_id}, :order=>"id DESC")
    else
        if [7,8,10,18,19,20].include?(current_user.rol_id)
        @evolucions = Evolucion.find(:all, :order=>"id DESC")
        end	
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @evolucions }
    end
  end

  # GET /evolucions/1
  # GET /evolucions/1.xml
  def show
    @evolucion = Evolucion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evolucion }
    end
  end

  # GET /evolucions/new
  # GET /evolucions/new.xml
  def new
    @evolucion = Evolucion.new
	@evolucion.paciente_id = params[:paciente]
	@evolucion.atencion_id = params[:atencion]
	if @evolucion.paciente_id == nil 
		redirect_to ("/")
	else
		if @evolucion.atencion_id == nil
			aten = Atencion.find(:last, :conditions=>{:paciente_id=>@evolucion.paciente_id, :fechaeg=>nil}, :order=>"id")
			if aten == nil 
				redirect_to(new_atencion_path(:paciente=>@evolucion.paciente_id))
				return
			else
				@evolucion.atencion_id = aten.id
			end	
		end
		respond_to do |format|
		format.html # new.html.erb
		format.xml  { render :xml => @evolucion }
		end
	end
  end

  # GET /evolucions/1/edit
  def edit
    @evolucion = Evolucion.find(params[:id])
  end

  # POST /evolucions
  # POST /evolucions.xml
  def create
    @evolucion = Evolucion.new(params[:evolucion])

    respond_to do |format|
      if @evolucion.save
        flash[:notice] = 'Evolucion fue creada.'
        format.html { redirect_to(paciente_path(@evolucion.paciente_id)) }
        format.xml  { render :xml => @evolucion, :status => :created, :location => @evolucion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @evolucion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /evolucions/1
  # PUT /evolucions/1.xml
  def update
    @evolucion = Evolucion.find(params[:id])

    respond_to do |format|
      if @evolucion.update_attributes(params[:evolucion])
        flash[:notice] = 'Evolucion fue actualizada.'
        format.html { redirect_to(paciente_path(@evolucion.paciente_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @evolucion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /evolucions/1
  # DELETE /evolucions/1.xml
  def destroy
    @evolucion = Evolucion.find(params[:id])
    @evolucion.destroy

    respond_to do |format|
      format.html { redirect_to(evolucions_url) }
      format.xml  { head :ok }
    end
  end
end
