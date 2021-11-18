class AtencionsController < ApplicationController
  before_action :login_required 
  # GET /atencions
  # GET /atencions.xml
  def index
  	@paciente_id = params[:paciente]
    if @paciente_id != nil
		@atencions = Atencion.find(:all, :conditions=>{:paciente_id => @paciente_id}, :order=>"id DESC")
	else
		if [7,8,10,18,19,20].include?(current_user.rol_id)
			@atencions = Atencion.find(:all, :order=>"id DESC")
		end	
	end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atencions }
    end
  end

  # GET /atencions/1
  # GET /atencions/1.xml
  def show
    @atencion = Atencion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atencion }
    end
  end

  # GET /atencions/new
  # GET /atencions/new.xml
  def new
    @atencion = Atencion.new
	@atencion.paciente_id = params[:paciente]
	@atencion.tipo_id = params[:tipo]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atencion }
    end
  end

  # GET /atencions/1/edit
  def edit
    @atencion = Atencion.find(params[:id])
  end

  # POST /atencions
  # POST /atencions.xml
  def create
    @atencion = Atencion.new(params[:atencion])

    respond_to do |format|
      if @atencion.save
        flash[:notice] = 'Atencion fue creada.'
        format.html { redirect_to(paciente_path(@atencion.paciente_id)) }
        format.xml  { render :xml => @atencion, :status => :created, :location => @atencion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atencion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atencions/1
  # PUT /atencions/1.xml
  def update
    @atencion = Atencion.find(params[:id])

    respond_to do |format|
      if @atencion.update_attributes(params[:atencion])
        flash[:notice] = 'Atencion fue actualizada.'
        format.html { redirect_to(paciente_path(@atencion.paciente_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atencion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atencions/1
  # DELETE /atencions/1.xml
  def destroy
    @atencion = Atencion.find(params[:id])
    @atencion.destroy

    respond_to do |format|
      format.html { redirect_to(atencions_url) }
      format.xml  { head :ok }
    end
  end
end
