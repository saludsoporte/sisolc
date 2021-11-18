class PedidosController < ApplicationController  
  before_action :login_required
  
  # GET /pedidos
  # GET /pedidos.xml
  def index
    @pedidos = Pedido.all().order(:id)
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pedidos }
    end
  end
  
  # GET /pedidos/1
  # GET /pedidos/1.xml
  def show
    if [5].include?(current_user.rol_id)
      @pedido = Pedido.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @pedido }
      end
    else
      redirect_to("/")
    end
  end
  
  # GET /pedidos/new
  # GET /pedidos/new.xml
  def new
    if [10].include?(current_user.rol_id)
      @pedido = Pedido.new
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @pedido }
      end
    else
      redirect_to("/")
    end
  end
  
  # GET /pedidos/1/edit
  def edit
    if [10].include?(current_user.rol_id)
      @pedido = Pedido.find(params[:id])
    else
      redirect_to("/")
    end
  end
  
  # POST /pedidos
  # POST /pedidos.xml
  def create
    @pedido = Pedido.new(params[:pedido])
  
    respond_to do |format|
      if @pedido.save
        flash[:notice] = 'Pedido was successfully created.'
        format.html { redirect_to(@pedido) }
        format.xml  { render :xml => @pedido, :status => :created, :location => @pedido }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pedido.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # PUT /pedidos/1
  # PUT /pedidos/1.xml
  def update
    @pedido = Pedido.find(params[:id])
  
    respond_to do |format|
      if @pedido.update_attributes(params[:pedido])
        flash[:notice] = 'Pedido was successfully updated.'
        format.html { redirect_to(@pedido) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pedido.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /pedidos/1
  # DELETE /pedidos/1.xml
  def destroy
    @pedido = Pedido.find(params[:id])
    @pedido.destroy
  
    respond_to do |format|
      format.html { redirect_to(pedidos_url) }
      format.xml  { head :ok }
    end
  end
end