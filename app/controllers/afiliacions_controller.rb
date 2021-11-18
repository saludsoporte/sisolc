class AfiliacionsController < ApplicationController
  before_action :login_required 
  # GET /afiliacions
  # GET /afiliacions.xml
  def index
  	@paciente_id = params[:paciente]
    if @paciente_id != nil
		@afiliacions = Afiliacion.find(:all, :conditions=>{:paciente_id => @paciente_id}, :order=>"id DESC")
	else
		if [10].include?(current_user.rol_id)
			@afiliacions = Afiliacion.all
		end	
	end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @afiliacions }
    end
  end

  # GET /afiliacions/1
  # GET /afiliacions/1.xml
  def show
    @afiliacion = Afiliacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @afiliacion }
    end
  end

  # GET /afiliacions/new
  # GET /afiliacions/new.xml
  def new
    @afiliacion = Afiliacion.new
	@afiliacion.paciente_id = params[:paciente]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @afiliacion }
    end
  end

  # GET /afiliacions/1/edit
  def edit
    @afiliacion = Afiliacion.find(params[:id])
  end

  # POST /afiliacions
  # POST /afiliacions.xml
  def create
    @afiliacion = Afiliacion.new(params[:afiliacion])

    respond_to do |format|
      if @afiliacion.save
        flash[:notice] = 'Afiliacion fue creada.'
        format.html { redirect_to(paciente_path(@afiliacion.paciente_id)) }
        format.xml  { render :xml => @afiliacion, :status => :created, :location => @afiliacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @afiliacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /afiliacions/1
  # PUT /afiliacions/1.xml
  def update
    @afiliacion = Afiliacion.find(params[:id])

    respond_to do |format|
      if @afiliacion.update_attributes(params[:afiliacion])
        flash[:notice] = 'Afiliacion fue actualizada.'
        format.html { redirect_to(paciente_path(@afiliacion.paciente_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @afiliacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /afiliacions/1
  # DELETE /afiliacions/1.xml
  def destroy
    @afiliacion = Afiliacion.find(params[:id])
    @afiliacion.destroy

    respond_to do |format|
      format.html { redirect_to(afiliacions_url) }
      format.xml  { head :ok }
    end
  end
end
