class ArticulosController < ApplicationController
  before_action :login_required 
  def prueba
    @requisicion = params[:articulo_requisicion_id]
	if @requisicion != nil && @requisicion != "" && Integer(@requisicion) >0
		@renglones = Renglon.find(:all , :conditions => { :requisicion_id => @requisicion }, :order => "renglon")
	end	
  end	

  def traeart
    @catalogo = params[:articulo_clave_id]
	if @catalogo != nil && @catalogo != ""
		@articulo = Catalogo.find(:first , :conditions => { :id => @catalogo })
	end	
  end	
  # GET /articulos
  # GET /articulos.xml
  def index
    @articulos = Articulo.find(:all, :order =>'solicitud_id DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articulos }
    end
  end

  # GET /articulos/1
  # GET /articulos/1.xml
  def show
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @articulo }
    end
  end

  # GET /articulos/new
  # GET /articulos/new.xml
  def new
    @articulo = Articulo.new
	@solicitud = params[:solicitud]
	@articulo.user_id = Solicitud.find(@solicitud).user_id
	@partida = params[:partida]
	@articulo.requisicion_id = params[:requisicion]
	@articulo.renglon_id = params[:renglon]
	@copiar = params[:copiar]
	if @copiar
		@ultimo = Articulo.find(:last, :conditions => {:solicitud_id => @solicitud}, :order => "id")
		if @ultimo != nil
			@articulo.clues_id = @ultimo.clues_id
			@articulo.clave_id = @ultimo.clave_id
			@articulo.descripcion = @ultimo.descripcion
			@articulo.presentacion = @ultimo.presentacion
			@articulo.marca_mod = @ultimo.marca_mod
			@articulo.cantidad = @ultimo.cantidad
			@articulo.precio = @ultimo.precio
			@articulo.caducidad = @ultimo.caducidad
			@articulo.almacen_id = @ultimo.almacen_id
			@articulo.entregas = @ultimo.entregas
			@articulo.requisicion_id = @ultimo.requisicion_id
			@articulo.renglon_id = @ultimo.renglon_id
			@articulo.capacitacion = @ultimo.capacitacion
			@articulo.muestra = @ultimo.muestra
			@articulo.notas = @ultimo.notas
			@articulo.anexos = @ultimo.anexos
		end	
	end	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @articulo }
    end
  end

  # GET /articulos/1/edit
  def edit
    @articulo = Articulo.find(params[:id])
	@solicitud = Solicitud.find(@articulo.solicitud_id)
	if @solicitud.adqui_id != current_user.id && ![10,15].include?(current_user.rol_id) && !([1,2,3].include?(@solicitud.estado_id) && [@solicitud.vobotecnico_id,@solicitud.user_id].include?(current_user.id))
		flash[:notice] = 'Esta solicitud no es modificable'
		redirect_to(@solicitud)
	end	
  end

  # POST /articulos
  # POST /articulos.xml
  def create
    @articulo = Articulo.new(params[:articulo])
	if !@articulo.clave_id.blank?
		@cat = Catalogo.find(:first, :conditions => {:id => @articulo.clave_id})
		@articulo.descripcion = @cat.descripcion
		@articulo.presentacion = @cat.presentacion
		@articulo.precio = @cat.precio
	end	
    respond_to do |format|
      if @articulo.save
		@imporsol = 0.0
		@articulos = Articulo.find(:all, :conditions => {:solicitud_id => @articulo.solicitud_id})
		for articulo in @articulos
			if articulo.precio != nil && articulo.cantidad != nil
				@imporsol = @imporsol + (articulo.precio * articulo.cantidad)
			end
		end
		@solicitud = Solicitud.find(:first, :conditions => {:id =>@articulo.solicitud_id})
		@solicitud.importe = @imporsol
		@solicitud.save
        flash[:notice] = 'Articulo fue creado.'
        format.html { redirect_to(@solicitud) }
        format.xml  { render :xml => @articulo, :status => :created, :location => @articulo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @articulo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articulos/1
  # PUT /articulos/1.xml
  def update
    @articulo = Articulo.find(params[:id])
	if @articulo.requisicion_id == nil && @articulo.renglon_id != nil
		@articulo.renglon_id = nil
	end	
	if !@articulo.clave_id.blank?
		@cat = Catalogo.find(:first, :conditions => {:id => @articulo.clave_id})
		if @cat != nil
			@articulo.descripcion = @cat.descripcion
			@articulo.presentacion = @cat.presentacion
			@articulo.precio = @cat.precio
		end	
	end	
    respond_to do |format|
      if @articulo.update_attributes(params[:articulo])
		if @articulo.requisicion_id == nil && @articulo.renglon_id != nil
			@articulo.renglon_id = nil
			@articulo.save
		end	
		@imporsol = 0.0
		@articulos = Articulo.find(:all, :conditions => {:solicitud_id => @articulo.solicitud_id})
		for articulo in @articulos
			if articulo.precio != nil && articulo.cantidad != nil
				@imporsol = @imporsol + (articulo.precio * articulo.cantidad)
			end
		end
	  	@solicitud = Solicitud.find(:first, :conditions => {:id =>@articulo.solicitud_id})
		@solicitud.importe = @imporsol
		@solicitud.save
        flash[:notice] = 'Articulo fue actualizado.'
        format.html { redirect_to(@solicitud) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @articulo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.xml
  def destroy
    @articulo = Articulo.find(params[:id])
	@imporsol = 0.0
	@articulos = Articulo.find(:all, :conditions => {:solicitud_id => @articulo.solicitud_id})
	for articulo in @articulos
		if articulo.precio != nil && articulo.cantidad != nil && articulo.id != @articulo.id
			@imporsol = @imporsol + (articulo.precio * articulo.cantidad)
		end
	end
	@solicitud = Solicitud.find(:first, :conditions => {:id =>@articulo.solicitud_id})
	@solicitud.importe = @imporsol
    @articulo.destroy
	@solicitud.save

    respond_to do |format|
      format.html { redirect_to(@solicitud) }
      format.xml  { head :ok }
    end
  end
end
