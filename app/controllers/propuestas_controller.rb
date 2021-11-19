class PropuestasController < ApplicationController
  before_action :login_required
  # GET /propuestas
  # GET /propuestas.xml
  def index
    @propuestas = Propuestum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @propuestas }
    end
  end

  # GET /propuestas/1
  # GET /propuestas/1.xml
  def show
    @propuesta = Propuestum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @propuesta }
    end
  end

  # GET /propuestas/new
  # GET /propuestas/new.xml
  def new
    @propuesta = Propuestum.new
	@partida = Partida.find(:first ,:conditions => { :partida => params[:partida] }).id
	@proceso = params[:proceso]
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @propuesta }
    end
  end

  # GET /propuestas/1/edit
  def edit
    @propuesta = Propuestum.find(params[:id])
  end

  # POST /propuestas
  # POST /propuestas.xml
  def create
    @propuesta = Propuestum.new(params[:propuesta])

    respond_to do |format|
      if @propuesta.save
        flash[:notice] = 'Propuesta was successfully created.'
        format.html { redirect_to(proceso_path(@propuesta.proceso_id)) }
        format.xml  { render :xml => @propuesta, :status => :created, :location => @propuesta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @propuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /propuestas/1
  # PUT /propuestas/1.xml
  def update
    @propuesta = Propuestum.find(params[:id])
    respond_to do |format|
      if @propuesta.update_attributes(params[:propuesta])
		if @propuesta.catalogo_id != nil && @propuesta.precio != nil
			@proceso = Proceso.find(@propuesta.proceso_id)
			@catalogo = Catalogo.find(@propuesta.catalogo_id)
			if @proceso.fecha >= @catalogo.fecha
				if @propuesta.iva == 1.0 || @propuesta.iva == nil
					@catalogo.precio = @propuesta.precio 
				else
					@catalogo.precio = @propuesta.precio * @propuesta.iva 
				end
				@catalogo.fecha = @proceso.fecha
				@catalogo.proceso = @proceso.proceso
				Catalogo.update(@catalogo.id,{:fecha =>@catalogo.fecha, :precio=>@catalogo.precio, :proceso=>@catalogo.proceso})
			end	
		end	
        flash[:notice] = 'Propuesta fue actualizada.'
        format.html { redirect_to(proceso_path(@propuesta.proceso_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @propuesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /propuestas/1
  # DELETE /propuestas/1.xml
  def destroy
    @propuesta = Propuestum.find(params[:id])
    @propuesta.destroy

    respond_to do |format|
      format.html { redirect_to(propuestas_url) }
      format.xml  { head :ok }
    end
  end
end
