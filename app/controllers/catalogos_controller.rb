class CatalogosController < ApplicationController
	before_action :login_required 
  # GET /catalogos
  # GET /catalogos.xml
  def index
	if [10].include?(current_user.rol_id)
		@catalogos = Catalogo.all()

		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @catalogos }
		end
	else
		redirect_to("/")
	end
  end

  # GET /catalogos/1
  # GET /catalogos/1.xml
  def show
	@acceso=params[:acceso]
	@almacen=params[:almacen]
	@catalogo = Catalogo.find(params[:id])
	if @acceso
		case
			when @acceso == '2'
			if @almacen
				@lotes = Lote.find_by_sql ["select * from lotes where existencia > 0.0 and catalogo_id = ? and almacen_id = ? order by fuente_id,partida_id,catalogo_id,caducidad",@catalogo.id,@almacen]
			else
				if [10,13,24].include?(current_user.rol_id)
					@lotes = Lote.find_by_sql ["select * from lotes where existencia > 0.0 and catalogo_id = ? order by almacen_id,fuente_id,partida_id,catalogo_id,caducidad",@catalogo.id]
				else
					@lotes = Lote.find_by_sql ["select * from lotes where existencia > 0.0 and catalogo_id = ? and exists (select tipo_id from almacens where lotes.almacen_id = almacens.id and almacens.tipo < 4 limit 1) order by almacen_id,fuente_id,partida_id,catalogo_id,caducidad",@catalogo.id]
				end
			end
			@existe = @lotes ?  @lotes.sum(&:existencia) : 0
			when @acceso == '3'
			if @almacen
				@lotes = Lote.find_by_sql ["select * from lotes where catalogo_id = ? and almacen_id = ? order by id,lote_id",@catalogo.id,@almacen]
			else
				if [21,22].include?(current_user.rol_id)
					@almacens = Almacen.find_by_sql ["select id from almacens where ? in(user_id,almac1_id,almac2_id,almac3_id,almac4_id,almac5_id,almac6_id,almac7_id)",current_user.id]
					@dependen = Almacen.find_by_sql ["select id from almacens where depende_id in(?)",@almacens]
					@numlotes = Lote.find_by_sql ["select id from lotes where catalogo_id = ? and (almacen_id in(?) or almacen_id in(?)) order by id",@catalogo.id,@almacens,@dependen]
					@lotes = Lote.find_by_sql ["select * from lotes where id in(?) or (lote_id is not null and lote_id in(?)) order by id",@numlotes,@numlotes]
				else
					@lotes = Lote.find_by_sql ["select * from lotes where catalogo_id = ? order by id",@catalogo.id]
				end
			end
			@existe = @lotes ?  @lotes.sum(&:existencia) : 0
		end	
	else
		@canped = 0.0
		@canrec = 0.0
		@cancan = 0.0
		@pedidos = Ped.find_by_sql ["select p.id,p.fecha,p.proceso_id,p.entrega,(select nomunidad from clues where clues.id = p.clues_id) unidad,p.proceso_id,d.cantidad,d.recibido,d.cancelado,p.almacen_id from peds p, detpeds d where clave_id=? and p.id = d.ped_id and p.estado_id = 12 and (p.tipo_id is null or p.tipo_id = 13)  and (extract(year from p.fecha) >= ? or (d.cantidad > (d.recibido+d.cancelado))) order by p.id desc",@catalogo.id,Date.today.year]
        @pedidos.each do |pedido|
			@canped = @canped+pedido.cantidad.to_d
			@canrec = @canrec+pedido.recibido.to_d
			@cancan = @cancan+pedido.cancelado.to_d
		end
		@lotes = Lote.find_by_sql ["select 	(select nombre from almacens a where a.id = lotes.almacen_id) lote,sum(existencia) existencia from lotes where catalogo_id = ? and existencia > 0.0 and almacen_id > 0 and almacen_id < 13 group by almacen_id order by lote",@catalogo.id]
		if [10,15].include?(current_user.rol_id) || ([5].include?(current_user.rol_id) && current_user.dato2 == 15)
			@precios = Ped.find_by_sql ["select  distinct d.precio*d.iva total,p.fecha fecha from detpeds d,peds p where p.id = d.ped_id and d.clave_id = ? and (p.tipo_id = 13 or p.tipo_id is null) order by p.fecha desc,total desc",@catalogo.id]
		end 	
		@poas = Poa.where("accion_id =?",@catalogo.id)
		@canpoa = @poas.sum(&:cantidad)
	end
	respond_to do |format|
		format.html # show.html.erb
		format.xml  { render :xml => @catalogo }
	end
  end

  # GET /catalogos/new
  # GET /catalogos/new.xml
  def new
    @catalogo = Catalogo.new
	@partida = params[:partida]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @catalogo }
    end
  end

  # GET /catalogos/1/edit
  def edit
    @catalogo = Catalogo.find(params[:id])
  end

  # POST /catalogos
  # POST /catalogos.xml
  def create
    @catalogo = Catalogo.new(params[:catalogo])
	@dupli = Catalogo.find(:first, :conditions=>{:partida_id=>@catalogo.partida_id,:clave=>@catalogo.clave})
	if @dupli == nil
		@catalogo['partida'] = Partida.find(:first, :conditions => {:id => @catalogo.partida_id}).partida
		respond_to do |format|
			if @catalogo.save
				flash[:notice] = 'Articulo fue agregado al catalogo.'
				format.html { redirect_to(partida_path(@catalogo.partida_id)) }
				format.xml  { render :xml => @catalogo, :status => :created, :location => @catalogo }
			else
				format.html { render :action => "new" }
				format.xml  { render :xml => @catalogo.errors, :status => :unprocessable_entity }
			end
		end
	else
		flash[:notice] = 'Error: Ya existe un articulo con la clave "'+@catalogo.clave+'" dentro de esta partida.'
		redirect_to(partida_path(@catalogo.partida_id))
	end	
  end

  # PUT /catalogos/1
  # PUT /catalogos/1.xml
  def update
    @catalogo = Catalogo.find(params[:id])
	@catnuevo = params[:catalogo]
	if @catalogo.clave == @catnuevo[:clave] || Catalogo.find(:first, :conditions=>{:partida_id=>@catalogo.partida_id,:clave=>@catnuevo[:clave]}) == nil
		respond_to do |format|
			if @catalogo.update_attributes(params[:catalogo])
				flash[:notice] = 'Catalogo fue actualizado.'
				format.html { redirect_to(partida_path(@catalogo.partida_id)) }
				format.xml  { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml  { render :xml => @catalogo.errors, :status => :unprocessable_entity }
			end
		end
	else
		flash[:notice] = 'Error: Ya existe un articulo con la clave "'+@catnuevo[:clave]+'" dentro de esta partida.'
		redirect_to(partida_path(@catalogo.partida_id))
	end	
  end

  # DELETE /catalogos/1
  # DELETE /catalogos/1.xml
  def destroy
    @catalogo = Catalogo.find(params[:id])
	@partida = Partida.find(@catalogo.partida_id)
    @arts = Articulo.find_by("clave_id=?",@catalogo.id)
	@detpeds = Detped.find_by("clave_id=?",@catalogo.id)
	@lotes = Lote.find_by("catalogo_id=?",@catalogo.id)
	if @arts == nil && @detpeds == nil && @lotes == nil
		@catalogo.destroy
        flash[:notice] = 'El articulo fue eliminado.'
		respond_to do |format|
			format.html { redirect_to(@partida) }
			format.xml  { head :ok }
		end
	else
		flash[:notice] = 'Error: No se puede borrar, existen datos:'+(@arts == nil ? "" : ' Solicitud '+@arts.solicitud_id.to_s)+(@detpeds == nil ? "" : ' Pedido '+@detpeds.ped_id.to_s)+(@lotes == nil ? "" : ' Lote '+@lotes.id.to_s)
        redirect_to(partida_path(@catalogo.partida_id))
	end	
  end
end