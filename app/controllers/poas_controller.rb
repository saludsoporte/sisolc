class PoasController < ApplicationController
  before_action :login_required
  # GET /poas
  # GET /poas.xml
  def index
    @poas = Poa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @poas }
    end
  end

  # GET /poas/1
  # GET /poas/1.xml
  def show
    @poa = Poa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @poa }
    end
  end

  # GET /poas/new
  # GET /poas/new.xml
  def new
    @poa = Poa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @poa }
    end
  end

  # GET /poas/1/edit
  def edit
    @poa = Poa.find(params[:id])
  end

  # POST /poas
  # POST /poas.xml
  def create
    @poa = Poa.new(params[:poa])

    respond_to do |format|
      if @poa.save
        flash[:notice] = 'Poa was successfully created.'
        format.html { redirect_to(@poa) }
        format.xml  { render :xml => @poa, :status => :created, :location => @poa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @poa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /poas/1
  # PUT /poas/1.xml
  def update
    @poa = Poa.find(params[:id])

    respond_to do |format|
      if @poa.update_attributes(params[:poa])
        flash[:notice] = 'Poa was successfully updated.'
        format.html { redirect_to(@poa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @poa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /poas/1
  # DELETE /poas/1.xml
  def destroy
    @poa = Poa.find(params[:id])
    @poa.destroy

    respond_to do |format|
      format.html { redirect_to(poas_url) }
      format.xml  { head :ok }
    end
  end
end

def sum
  
end
