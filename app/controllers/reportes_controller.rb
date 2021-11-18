class ReportesController < ApplicationController
  before_action :login_required 
  # GET /reportes
  # GET /reportes.xml
  def index
	@tipo = params[:tipo].to_i
	@reportes = Reporte.where("sistema_id = ? or(sistema_id <> 2 and sistema_id = 0)",@tipo).order(:id)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reportes }
    end
  end

  # GET /reportes/1
  # GET /reportes/1.xml
  def show
    @reporte = Reporte.find(params[:id])
	case
		when @reporte.id == 1
			@atencions = Atencion.where("fecha >= ? and fecha <= ?",@reporte.desde,@reporte.hasta).order(id: :DESC)
		when @reporte.id == 2
			@movimientos = Movimiento.where("tipo_id = 3 and estado_id = 12 and fecha >= ? and fecha <= ?",@reporte.desde,@reporte.hasta).order(:almacen_id,:consec)
		when @reporte.id == 3
			@movimientos = Movimiento.where("ped_id is not null and factura is not null  and trim(both from factura) <> '' and impfac is not null and fechafac is not null and tipo_id = 3 and estado_id = 12 and facrep >= ? and facrep <= ? and nfacrep >= ? and nfacrep <= ?",@reporte.desde,@reporte.hasta,@reporte.rango1,@reporte.rango2).order(:updated_at)
		when @reporte.id == 4
			if @reporte.cpfin?
				@peds  = Ped.where("proceso_id=? and estado_id in (1,3,12)",@reporte.cpfin).order(:id)
			else 
				@peds  = Ped.where("id between ? and ? and estado_id in (1,3,12)",@reporte.rango1,@reporte.rango2).order(:id)
			end
		when @reporte.id == 5
			@requisicions  = Requisicion.where("id between ? and ? and estado_id=2",@reporte.rango1,@reporte.rango2).order(:id)
		when @reporte.id == 6
			if @reporte.rango2 == nil || @reporte.rango2 == 0
				if @reporte.rango1 == nil
					@peds  = Ped.where("exists (select ped_id from detpeds where peds.id = detpeds.ped_id and detpeds.cantidad > (detpeds.recibido+detpeds.cancelado)) and peds.estado_id = 12 and entrega < ? and entrega >= ?",Date.today,@reporte.desde).order(:id)
				else
					@peds  = Ped.where("exists (select ped_id from detpeds where peds.id = detpeds.ped_id and detpeds.cantidad > (detpeds.recibido+detpeds.cancelado)) and peds.estado_id = 12 and entrega < ? and peds.proveedor_id = ? and entrega >= ?",Date.today,@reporte.rango1,@reporte.desde).order(:id)
				end
			else	
				if @reporte.rango1 == nil
					@peds  = Ped.where("exists (select ped_id from detpeds where peds.id = detpeds.ped_id and detpeds.cantidad > (detpeds.recibido+detpeds.cancelado)) and peds.estado_id = 12 and entrega-? < ? and entrega >= ?",Date.today,@reporte.rango2,@reporte.desde).order(:id)
				else
					@peds  = Ped.where("exists (select ped_id from detpeds where peds.id = detpeds.ped_id and detpeds.cantidad > (detpeds.recibido+detpeds.cancelado)) and peds.estado_id = 12 and entrega-? < ? and peds.proveedor_id = ? and entrega >= ?",Date.today,@reporte.rango2,@reporte.rango1,@reporte.desde).order(:id)
				end
			end
		when [7,8].include?(@reporte.id)
			@almacen = Almacen.find(@reporte.rango1)
			@lotes = Lote.where("exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.tipo_id = ? and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?)",@reporte.rango2,@reporte.rango1,@reporte.desde,@reporte.hasta).order(:fuente_id,:movimiento_id)
		when [9,10].include?(@reporte.id)
			@almacen = Almacen.find(@reporte.rango1)
			@lotes = Lote.where("exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.tipo_id = ? and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?)",@reporte.rango2,@reporte.rango1,@reporte.desde,@reporte.hasta).order(:fuente_id,:partida_id,:salida_id)
		when [11].include?(@reporte.id)
			@almacen = Almacen.find(@reporte.rango1)
			@resultados = Lote.find_by_sql ["select fp.fuente_id, fp.partida_id, (coalesce(ea.entant,0)-coalesce(sa.salant,0)) inicial, coalesce(e.entradas,0) entradas, coalesce(s.salidas,0) salidas, (coalesce(e.entradas,0)+coalesce(ea.entant,0)-coalesce(s.salidas,0)-coalesce(sa.salant,0)) final from
				(select distinct fuente_id,partida_id from lotes where exists (select movimiento_id from movimientos where (lotes.movimiento_id = movimientos.id or lotes.salida_id = movimientos.id) and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?) order by fuente_id,partida_id) fp
				left outer join (select fuente_id,partida_id, sum(precio*cantidadp) entant from lotes where exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.tipo_id = 3 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha < ?) group by fuente_id,partida_id) ea on (fp.fuente_id = ea.fuente_id and fp.partida_id = ea.partida_id)
				left outer join (select fuente_id,partida_id, sum(precio*cantidadp) salant from lotes where exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.tipo_id = 4 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha < ?) group by fuente_id,partida_id) sa on (fp.fuente_id = sa.fuente_id and fp.partida_id = sa.partida_id)
				left outer join (select fuente_id,partida_id, sum(precio*cantidadp) entradas from lotes where exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.tipo_id = 3 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?) group by fuente_id,partida_id) e on (fp.fuente_id = e.fuente_id and fp.partida_id = e.partida_id)
				left outer join (select fuente_id,partida_id, sum(precio*cantidadp) salidas from lotes where exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.tipo_id = 4 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?) group by fuente_id,partida_id) s on (fp.fuente_id = s.fuente_id and fp.partida_id = s.partida_id)",
				@reporte.rango1,@reporte.hasta,@reporte.rango1,@reporte.desde,@reporte.rango1,@reporte.desde,@reporte.rango1,@reporte.desde,@reporte.hasta,@reporte.rango1,@reporte.desde,@reporte.hasta]
		when [12,13].include?(@reporte.id)
			desderep = params[:almacen_id]
			if desderep
				@reporte.rango1 = params[:almacen_id].to_i
				@reporte.cpini = params[:fuente_id].to_i
				@reporte.cpfin = params[:partida_id].to_i
			end	
			@almacen = Almacen.find(@reporte.rango1)
			if @reporte.rango2 != nil
				@catalogo = Catalogo.find(@reporte.rango2)
			else
			    @catalogo = nil
			end
			if @reporte.rango2 == nil || @catalogo == nil
				@lotes = Lote.find_by_sql ["select * from ((select  id,catalogo_id,ped_id,cantidadp,existencia,caducidad,almacen_id,fecha,lote,fuente_id,precio,observacion,estado_id,movimiento_id,partida_id,etiqueta_id,lote_id,salida_id,observsal,null as renglon_id from lotes where lotes.fuente_id = ? and lotes.partida_id = ? and exists (select movimiento_id from movimientos where (lotes.movimiento_id = movimientos.id or lotes.salida_id = movimientos.id) and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?))
											UNION ALL (select id,catalogo_id,ped_id,cantidadp,existencia,caducidad,almacen_id,fecha,(select lote from lotes l2 where lotes.lote_id = l2.id) as lote,fuente_id,precio,observacion,estado_id,movimiento_id,partida_id,etiqueta_id,lote_id,salida_id,observsal,1 as renglon_id from lotes where movimiento_id is not null and salida_id is not null and lotes.fuente_id = ? and lotes.partida_id = ? and exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?) and exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?))) l order by partida_id,catalogo_id,fuente_id,lote,fecha,id",@reporte.cpini,@reporte.cpfin,@reporte.rango1,@reporte.hasta,@reporte.cpini,@reporte.cpfin,@reporte.rango1,@reporte.hasta,@reporte.rango1,@reporte.hasta]
			else
				@lotes = Lote.find_by_sql ["select * from ((select  id,catalogo_id,ped_id,cantidadp,existencia,caducidad,almacen_id,fecha,lote,fuente_id,precio,observacion,estado_id,movimiento_id,partida_id,etiqueta_id,lote_id,salida_id,observsal,null as renglon_id from lotes where lotes.catalogo_id = ? and exists (select movimiento_id from movimientos where (lotes.movimiento_id = movimientos.id or lotes.salida_id = movimientos.id) and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?))
											UNION ALL (select id,catalogo_id,ped_id,cantidadp,existencia,caducidad,almacen_id,fecha,(select lote from lotes l2 where lotes.lote_id = l2.id) as lote,fuente_id,precio,observacion,estado_id,movimiento_id,partida_id,etiqueta_id,lote_id,salida_id,observsal,1 as renglon_id from lotes where movimiento_id is not null and salida_id is not null and lotes.catalogo_id = ? and exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?) and exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?))) l order by partida_id,catalogo_id,fuente_id,lote,fecha,id",@reporte.rango2,@reporte.rango1,@reporte.hasta,@reporte.rango2,@reporte.rango1,@reporte.hasta,@reporte.rango1,@reporte.hasta]
			end
			@lotes.each do |lote|
				ajuste = Ajuste.where("lote_id = ?",lote.id).first()
				if ajuste
					lote.etiqueta_id = ajuste.id
				end	
			end	
		when [14].include?(@reporte.id)
			if true
				@solicituds = Solicitud.where("estado_id in (4,5)").order(:partida_id)
			else
				@solicituds = Solicitud.all().order(id: :DESC)
			end
		when [15].include?(@reporte.id)
			redirect_to(lotes_path(:tipo=>2))
			return
		when [16].include?(@reporte.id)
			@partida = Partida.find(@reporte.cpfin)
			@almacen = Almacen.find(@reporte.rango1)
			if @reporte.cpini?
				@resultados = Catalogo.find_by_sql ["select id,clave,descripcion,presentacion,c.precio,c.proceso,e.existencia
													from catalogos c left outer join 
														(select catalogo_id,sum(existencia) existencia
															from  lotes l  where existencia > 0.0 and almacen_id = ?
															group by catalogo_id
															having exists(select id from catalogos c where c.id = catalogo_id and c.partida_id = ?)) e
														on c.id = e.catalogo_id where c.partida_id = ?
													order by clave",@reporte.rango1,@reporte.cpfin,@reporte.cpfin]
			else
				@resultados = Catalogo.find_by_sql ["select id,clave,descripcion,presentacion,c.precio,c.proceso,e.existencia
													from catalogos c , 
														(select catalogo_id,sum(existencia) existencia
															from  lotes l  where existencia > 0.0 and almacen_id = ?
															group by catalogo_id
															having exists(select id from catalogos c where c.id = catalogo_id and c.partida_id = ?)) e
														where c.id = e.catalogo_id and c.partida_id = ?
													order by clave",@reporte.rango1,@reporte.cpfin,@reporte.cpfin]
			end
		when [17].include?(@reporte.id)
			redirect_to(lotes_path(:tipo=>3,:reporte=>17))
			return
		when [18].include?(@reporte.id)
			@almacen = Almacen.find(@reporte.rango1)
			@resultados = Lote.find_by_sql ["select fp.catalogo_id,(select clave from catalogos c where c.id = fp.catalogo_id) clave, fp.partida_id, (coalesce(ea.entant,0)-coalesce(sa.salant,0)) inicial, coalesce(e.entradas,0) entradas, coalesce(s.salidas,0) salidas, (coalesce(e.entradas,0)+coalesce(ea.entant,0)-coalesce(s.salidas,0)-coalesce(sa.salant,0)) final from
				(select distinct partida_id,catalogo_id from lotes where exists (select movimiento_id from movimientos where (lotes.movimiento_id = movimientos.id or lotes.salida_id = movimientos.id) and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha <= ?) order by partida_id,catalogo_id) fp
				left outer join (select partida_id,catalogo_id, sum(cantidadp) entant from lotes where exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.tipo_id = 3 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha < ?) group by partida_id,catalogo_id) ea on (fp.catalogo_id = ea.catalogo_id and fp.partida_id = ea.partida_id)
				left outer join (select partida_id,catalogo_id, sum(cantidadp) salant from lotes where exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.tipo_id = 4 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha < ?) group by partida_id,catalogo_id) sa on (fp.catalogo_id = sa.catalogo_id and fp.partida_id = sa.partida_id)
				left outer join (select partida_id,catalogo_id, sum(cantidadp) entradas from lotes where exists (select movimiento_id from movimientos where lotes.movimiento_id = movimientos.id and movimientos.tipo_id = 3 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?) group by partida_id,catalogo_id) e on (fp.catalogo_id = e.catalogo_id and fp.partida_id = e.partida_id)
				left outer join (select partida_id,catalogo_id, sum(cantidadp) salidas from lotes where exists (select movimiento_id from movimientos where lotes.salida_id = movimientos.id and movimientos.tipo_id = 4 and movimientos.almacen_id = ? and movimientos.estado_id = 12 and movimientos.fecha >= ? and movimientos.fecha <= ?) group by partida_id,catalogo_id) s on (fp.catalogo_id = s.catalogo_id and fp.partida_id = s.partida_id) order by fp.partida_id,clave ",
				@reporte.rango1,@reporte.hasta,@reporte.rango1,@reporte.desde,@reporte.rango1,@reporte.desde,@reporte.rango1,@reporte.desde,@reporte.hasta,@reporte.rango1,@reporte.desde,@reporte.hasta]
		when [19].include?(@reporte.id)
			@solicituds = Solicitud.where("estado_id in (4,5,8)").order(:id)
		when [20].include?(@reporte.id)
			if @reporte.rango1 == nil
				@reporte.rango1 = 1
			end
			@almacen = Almacen.find(@reporte.rango1)
			if @reporte.hasta == nil
				@reporte.hasta == Date.today
			end
			if @reporte.unidad?
				@existencias = Lote.find_by_sql ["select * from lotes where fecha <= ? and existencia > 0.0 and almacen_id = ? order by fuente_id,partida_id,catalogo_id,lote",Date.today,@almacen]
			else
				if @reporte.rango2 != nil
					@existencias = Lote.find_by_sql ["select * from lotes where fecha <= ? and existencia > 0.0 and almacen_id = ? and catalogo_id = ? order by fuente_id,partida_id,catalogo_id,lote",Date.today,@almacen,@reporte.rango2]
				else
					@existencias = Lote.find_by_sql ["select * from lotes where fecha <= ? and existencia > 0.0 and almacen_id = ? and fuente_id = ? and partida_id = ? order by catalogo_id,lote",Date.today,@almacen,@reporte.cpini,@reporte.cpfin]
				end
			end
	end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reporte }
    end
  end

  # GET /reportes/new
  # GET /reportes/new.xml
  def new
    @reporte = Reporte.new
	@reporte.sistema_id = params[:sistema]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reporte }
    end
  end

  # GET /reportes/1/edit
  def edit
    @reporte = Reporte.find(params[:id])
  end

  # POST /reportes
  # POST /reportes.xml
  def create
    @reporte = Reporte.new(params[:reporte])

    respond_to do |format|
      if @reporte.save
        flash[:notice] = 'Reporte was successfully created.'
        format.html { redirect_to(@reporte) }
        format.xml  { render :xml => @reporte, :status => :created, :location => @reporte }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reporte.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reportes/1
  # PUT /reportes/1.xml
  def update
    @reporte = Reporte.find(params[:id])

    respond_to do |format|
      if @reporte.update(reportes_params)
        format.html { redirect_to(@reporte) }
        format.xml  { head :ok }
      else
        flash[:notice] = 'Reporte tiene errores.'
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reporte.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reportes/1
  # DELETE /reportes/1.xml
  def destroy
    @reporte = Reporte.find(params[:id])
    @reporte.destroy

    respond_to do |format|
      format.html { redirect_to(reportes_url) }
      format.xml  { head :ok }
    end
  end

  private
  def reportes_params
	params.require(:reporte).permit(:reporte,
		:desde,:hasta,:cpini,:cpfin,:usuario,
		:texto,:rango1,:rango2)
  end
end
