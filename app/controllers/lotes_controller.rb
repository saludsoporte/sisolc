class LotesController < ApplicationController
  before_action :login_required 
  # GET /lotes
  # GET /lotes.xml
  def index
	@ped = params[:ped].to_i
	@tipo = params[:tipo].to_i
	
	case
		when @tipo == 2
			@lotes = Lote.where(fuente_id:nil).order(ped_id: :asc,movimiento_id: :asc,catalogo_id: :asc)
		when @tipo == 3
			@reporte = Reporte.find(params[:reporte].to_i)
			@lotes = Lote.where("caducidad >= ? and caducidad <= ? and almacen_id = ?"+
				 "and existencia > 0.0 and partida_id = ?",
				 @reporte.desde,@reporte.hasta,@reporte.rango1,@reporte.cpfin).order(:caducidad)
		else
			@lotes = Lote.where(id:405625).order(movimiento_id: :asc,catalogo_id: :asc)			
	end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lotes }
    end
  end

  # GET /lotes/1
  # GET /lotes/1.xml
  def show
    @lote = Lote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lote }
    end
  end

  # GET /lotes/new
  # GET /lotes/new.xml
  def new
    @lote = Lote.new
	@detped_id = params[:detped]
	@per = params[:per]
	@prov_id = params[:prov_id]
	@tipo = params[:tipo]
	@lote_id = params[:lote]
	@lote.estado_id = 1
	@lote.catalogo_id = params[:clave]
	@catalogo = Catalogo.find(:first, :conditions=>{:id=>@lote.catalogo_id})
	@partida = @catalogo.partida_id
	@movimiento = Movimiento.find(:first, :conditions=>{:id=>params[:movimiento]})
	@unidades = !@catalogo.unidades.blank? ? @catalogo.unidades : 1
	@lote.almacen_id = @movimiento.almacen_id
	if @tipo == '4'
		@lote.salida_id = @movimiento.id
		@lote.lote_id = @lote_id
		@loteant = Lote.find(:first,:conditions=>{:id=>@lote_id})
		@lote.cantidadp = @loteant.existencia
		@lote.caducidad = @loteant.caducidad
		@lote.precio = @loteant.precio
		@lote.lote = @loteant.lote
		@lote.fuente_id = @loteant.fuente_id
		@lote.ped_id = @loteant.ped_id
		@lote.detped_id = @loteant.detped_id
		@lote.partida_id = @loteant.partida_id
	else	
		if !@detped_id.blank?
			if @per == '11'
				@detped = Detped.find(:first, :conditions=>{:id=>@detped_id})
				@lote.catalogo_id = @detped.clave_id
				@lote.cantidadp = @detped.cantidad-(@detped.recibido+@detped.cancelado)
				@ped = Ped.find(:first, :conditions=>{:id=>@detped.ped_id})
				@lote.prov_id = @ped.proveedor_id
				@requisicion= Requisicion.find(:first, :conditions=>{:id=>@ped.requisicion_id})
				if @requisicion != nil
					@lote.fuente_id = @requisicion.fuente_id
				else
				    @lote.fuente_id = @ped.fuente_id
				end	
#				@lote.precio = (@detped.precio * (@detped.iva? ? @detped.iva : 1.0)).round(2)
				@lote.precio = (@detped.precio * (@detped.iva? ? @detped.iva : 1.0))
				@lote.detped_id = @detped.id
				@lote.ped_id = @detped.ped_id
				@lote.requisicion_id = @detped.requisicion_id
				@lote.renglon_id = @detped.renglon_id
				@lote.existencia = @lote.cantidadp
				@lote.caducidad = @detped.caducidad.blank? ? nil : (Date.today + (@detped_id.blank? ? 18.months : @detped.caducidad.months))
			else	
				@detped = Pedido.find(:first, :conditions=>{:id=>@detped_id})
				@lote.cantidadp = @detped.cantidad-(@detped.cantfac+@detped.cantcanc)
				@ped = Pedido.find(:first, :conditions=>{:id=>@detped_id})
				@lote.prov_id = @prov_id
				@requisicion= Requisicion.find(:first, :conditions=>{:id=>@ped.requisicion})
				if !@requisicion.blank?
					@lote.fuente_id = @requisicion.fuente_id
					@lote.requisicion_id = @requisicion.id
				end	
				@lote.precio = (@detped.preciouni * (((@detped.iva.blank? ? 0 : @detped.iva)/100.0)+1)).round(2)
				@lote.detped_id = @detped.id
				@lote.ped_id = @detped_id
				@lote.renglon_id = nil
				@lote.existencia = @lote.cantidadp
				@lote.caducidad = nil 
			end
		end
		@lote.movimiento_id = params[:movimiento]
		@lote.partida_id = @catalogo.partida_id
	end	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lote }
    end
  end

  # GET /lotes/1/edit
  def edit
    @lote = Lote.find(params[:id])
	@movimiento = Movimiento.find(params[:movimiento])
  end

  # POST /lotes
  # POST /lotes.xml
  def create
    @lote = Lote.new(params[:lote])
	@lote.fecha = Date.today
	@lote.estado_id = 1
	if @lote.cantidadu != nil && @lote.cantidadu > 0
		unidades = Catalogo.find(:first, :conditions=>{:id=>@lote.catalogo_id}).unidades
		if ![nil,0,1].include?(unidades)
			@lote.cantidadp = @lote.cantidadu/unidades.to_f
		end	
	end
	@lote.existencia = @lote.cantidadp
	problema = 0
	if !@lote.cantidadp.blank? && @lote.cantidadp > 0
		if @lote.lote_id.blank?
			@movimiento = Movimiento.find(@lote.movimiento_id)
			if !@movimiento.ped_id.blank? 
				@detped = Detped.find(:first,:conditions=>{:id=>@lote.detped_id})
				limite = @detped.cantidad-(@detped.recibido+@detped.cancelado)
				if !@detped.caducidad.blank? && @lote.lote_id.blank? && (@lote.caducidad == nil || @lote.caducidad < (Date.today+(@lote.detped_id.blank? ? 0.months : @detped.caducidad.months)))
					problema = 3
				end
			else
				@detped = Pedido.find(:first,:conditions=>{:id=>@lote.detped_id})
				limite = @detped.cantidad-(@detped.cantfac+@detped.cantcanc)
			end
		else 
			@loteant = Lote.find(:first,:conditions=>{:id =>@lote.lote_id})
			limite = @loteant.existencia
		end	
		if @lote.cantidadp > limite
			problema = 2
		end
	else
		problema = 1
	end
	respond_to do |format|
		if !(problema == 0) || !@lote.save
			flash[:notice] =case
								when problema == 0
									'Error en la base de datos.'
								when problema == 1
									'Error: Falta Cantidad o mala Caducidad.'+(Date.today+(@detped_id.blank? ? 18.months : @detped.caducidad.months)).to_s
								when problema == 2
									'Error: Cantidad excede al maximo pedido.'
								when problema == 3
									'Error: Problema con la caducidad.'
							end	
			format.html { redirect_to(movimiento_path(@lote.movimiento_id.blank? ? @lote.salida_id : @lote.movimiento_id)) }
			format.xml  { render :xml => @lote.errors, :status => :unprocessable_entity }
		else
			if @lote.lote_id.blank?
				if !@movimiento.ped_id.blank? 
					@detped.recibido = @detped.recibido+@lote.cantidadp
				else
					@detped.cantfac = @detped.cantfac+@lote.cantidadp
				end
				@detped.save
			else
				@loteant.existencia = @loteant.existencia-@lote.cantidadp
				@loteant.save
			end	
			flash[:notice] = 'Lote fue creado.'
			format.html { redirect_to(movimiento_path(@lote.movimiento_id.blank? ? @lote.salida_id : @lote.movimiento_id)) }
			format.xml  { render :xml => @lote, :status => :created, :location => @lote }
		end
	end
  end

  # PUT /lotes/1
  # PUT /lotes/1.xml
  def update
    @lote = Lote.find(params[:id])

    respond_to do |format|
      if @lote.update_attributes(params[:lote])
		if @lote.observacion == '+1@'
			nuevolote = @lote.clone
			nuevolote.save
		end	
        flash[:notice] = 'Lote fue actualizado.'
        format.html { redirect_to(movimiento_path((@lote.estado_id == 13 || @lote.salida_id == nil) ? @lote.movimiento_id : @lote.salida_id)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lotes/1
  # DELETE /lotes/1.xml
  def destroy
    @lote = Lote.find(params[:id])
	if (@lote.movimiento_id.blank? && @lote.salida_id.blank?) || (@lote.lote_id.blank? && @lote.detped_id.blank?)
		@lote.destroy
	else	
		if @lote.lote_id.blank?
			@movimiento = Movimiento.find(@lote.movimiento_id)
			if !@movimiento.ped_id.blank? 
				@detped = Detped.find(:first,:conditions=>{:id=>@lote.detped_id})
				@detped.recibido = @detped.recibido-@lote.cantidadp
			else
				@detped = Pedido.find(:first,:conditions=>{:id=>@lote.detped_id})
				@detped.cantfac = @detped.cantfac-@lote.cantidadp
			end
			@detped.save
		else
			@loteant = Lote.find(:first,:conditions=>{:id=>@lote.lote_id})
			if @loteant != nil || ![10].include?(current_user.rol_id)
				@loteant.existencia = @loteant.existencia+@lote.cantidadp
				@loteant.save
			end
		end
		@lote.destroy
	end
	if (@lote.movimiento_id.blank? && @lote.salida_id.blank?)
		respond_to do |format|
			format.html { redirect_to(lotes_path()) }
			format.xml  { head :ok }
		end
	else
		respond_to do |format|
			format.html { redirect_to(movimiento_path(@lote.movimiento_id.blank? ? @lote.salida_id : @lote.movimiento_id)) }
			format.xml  { head :ok }
		end
	end	
  end
end
