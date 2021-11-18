class ContabilidadsController < ApplicationController
  before_action :login_required 
  # GET /contabilidads
  # GET /contabilidads.xml
  def index
    @contabilidads = Contabilidad.all()

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contabilidads }
    end
  end

  # GET /contabilidads/1
  # GET /contabilidads/1.xml
  def show
    @contabilidad = Contabilidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contabilidad }
    end
  end

  # GET /contabilidads/new
  # GET /contabilidads/new.xml
  def new
    @contabilidad = Contabilidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contabilidad }
    end
  end

  # GET /contabilidads/1/edit
  def edit
    @contabilidad = Contabilidad.find(params[:id])
  end

  # POST /contabilidads
  # POST /contabilidads.xml
  def create
    @contabilidad = Contabilidad.new(params[:contabilidad])

    respond_to do |format|
      if @contabilidad.save
        flash[:notice] = 'Cuenta fue creada.'
        format.html { redirect_to(contabilidads_path) }
        format.xml  { render :xml => @contabilidad, :status => :created, :location => @contabilidad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contabilidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contabilidads/1
  # PUT /contabilidads/1.xml
  def update
    @contabilidad = Contabilidad.find(params[:id])

    respond_to do |format|
      if @contabilidad.update_attributes(params[:contabilidad])
        flash[:notice] = 'Cuenta fue actualizada.'
        format.html { redirect_to(contabilidads_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contabilidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contabilidads/1
  # DELETE /contabilidads/1.xml
  def destroy
    @contabilidad = Contabilidad.find(params[:id])
    @contabilidad.destroy

    respond_to do |format|
      format.html { redirect_to(contabilidads_url) }
      format.xml  { head :ok }
    end
  end
end