class MovimientosController < ApplicationController
    before_action :login_required 
    # GET /movimientos
    # GET /movimientos.xml
    def index
      @almacen = params[:almacen].to_i
      @periodos = Movimiento.find_by_sql ["select distinct extract(year from fecha) ANO, extract(month from fecha) MES from movimientos where almacen_id = ? order by ano,mes",@almacen]
      if !@almacen
          respond_to do |format|
              format.html { redirect_to(almacens_path) }
              format.xml  { render :xml => @movimientos }
          end          
      else
          @almacen = Almacen.find(@almacen)
          @movimientos = Movimiento.paginate(page:params[:page]).where("almacen_id = ? and extract(year from fecha) = ? and extract(month from fecha) = ?",@almacen.id,params[:ano].to_i,params[:mes].to_i).order(consec:  :DESC)
          respond_to do |format|
              format.html # index.html.erb
              format.xml  { render :xml => @movimientos }
          end
      end
    end 
    
    # GET /movimientos/1
    # GET /movimientos/1.xml
    def show
      @movimiento = Movimiento.find(params[:id])
      @almacen = Almacen.find(@movimiento.almacen_id)
      if @movimiento.tipo_id == 3
          @lotes = Lote.where("movimiento_id=?",@movimiento.id).order(fuente_id: :asc,catalogo_id: :asc,observacion: :asc)
          if @movimiento.ped_id.blank?
              @pedidos = Pedido.find_by_sql ["select * from pedidos where pedido = ? and cantidad > cantfac+cantcanc",@movimiento.pedido]
              @detpeds = nil
          else
              @detpeds = Detped.find_by_sql ["select * from detpeds where ped_id = ? and cantidad > recibido+cancelado",@movimiento.ped_id]
              @pedidos = nil
          end
      else	
          @lotes = Lote.where("salida_id=?",@movimiento.id).order(fuente_id: :asc,partida_id: :asc,catalogo_id: :asc,observacion: :asc)
          @existencias = Lote.find_by_sql ["select * from lotes where partida_id = ? and existencia > 0.0 and estado_id = 12 and almacen_id = ? order by catalogo_id,caducidad",@movimiento.partida_id,@movimiento.almacen_id]
      end	
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @movimiento }
      end
    end
  
    # GET /movimientos/new
    # GET /movimientos/new.xml
    def new
      @movimiento = Movimiento.new
      @movimiento.almacen_id = params[:almacen]
      @almacen = Almacen.find(@movimiento.almacen_id)
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @movimiento }
      end
    end
  
    # GET /movimientos/1/edit
    def edit
      @movimiento = Movimiento.find(params[:id])
      @almacen = Almacen.find(@movimiento.almacen_id)
      central = Almacen.find(1)
      @almacentral = [central.almac1_id,central.almac2_id,central.almac3_id,central.almac4_id,central.almac5_id,central.almac6_id,central.almac7_id]
      if @movimiento.tipo_id == 3
          @tiene = Lote.where("movimiento_id=?",@movimiento.id)
      else
          @tiene = Lote.where("salida_id=?",@movimiento.id)
      end	
    end
  
    # POST /movimientos
    # POST /movimientos.xml
    def create
      @movimiento = Movimiento.new(params[:movimiento])
      @almacen = Almacen.find(@movimiento.almacen_id)
      if (@almacen.cierre1 != nil && @movimiento.fecha <= @almacen.cierre1) || (@almacen.cierre2 != nil && @movimiento.fecha <= @almacen.cierre2)
          flash[:notice] = 'Error: Fecha movimiento menor o igual a la de cierre contable u operativo.'
          redirect_to("/")
          return
      end	
      if @movimiento.tipo_id == 3
          if !@movimiento.ped_id.blank?
              @detped = Detped.where("ped_id=?",@movimiento.ped_id)
              if @detped
                  @movimiento.partida_id = Catalogo.find(@detped.clave_id).partida_id
              end
          else
              if !@movimiento.pedido.blank?
                  @pedido = Pedido.where("pedido=?",@movimiento.pedido)
                  if @pedido
                      @movimiento.partida_id = Partida.find("partida=?",@pedido.partida).id
                  end
              end	
          end
      end		
      @movant = Movimiento.where("almacen_id=?",@movimiento.almacen_id).last.order(:consec)
      @movimiento.consec = @movant ? @movant.consec + 1 : 1
      respond_to do |format|
        if @movimiento.save
          flash[:notice] = 'Movimiento fue creado.'
          format.html { redirect_to(@movimiento) }
          format.xml  { render :xml => @movimiento, :status => :created, :location => @movimiento }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @movimiento.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # PUT /movimientos/1
    # PUT /movimientos/1.xml
    def update
        @movimiento = Movimiento.find(params[:id])
        estadoant = @movimiento.estado_id
        movactual = Movimiento.new(params[:movimiento])
        @almacen = Almacen.find(@movimiento.almacen_id)
        completo = true
        if @movimiento.tipo_id == 3
            @lotes = Lote.where("movimiento_id=?",@movimiento.id)
            @lotes.each do |lote|
            completo = (lote.cantidadp == lote.existencia)
            break if !completo
            end	
        else	
            @lotes = Lote.find("salida_id=?",@movimiento.id)
        end
        if estadoant == 12 && ![10].include?(current_user.rol_id) && movactual.estado_id != nil && !([13].include?(current_user.rol_id) && completo && @movimiento.tipo_id == 3)
            flash[:notice] = 'Error: Intento de modificar un movimiento que ya ha sido previamente aplicado.'
            redirect_to("/")
            return
        end
        if movactual.fecha != nil
            if (![10].include?(current_user.rol_id) || Date.today != '2012-06-19'.to_date) && ((@almacen.cierre1 != nil && movactual.fecha <= @almacen.cierre1) || (@almacen.cierre2 != nil && movactual.fecha <= @almacen.cierre2))
              flash[:notice] = 'Error: Fecha movimiento menor o igual a la de cierre contable u operativo.'
              redirect_to("/")
              return
            end
        end
        respond_to do |format|
        if @movimiento.update_attributes(params[:movimiento])
          @movimiento.importe = 0.0
          @lotes.each do |lote|
              @movimiento.importe = @movimiento.importe + (lote.cantidadp * lote.precio)
            end
        if @movimiento.oridest == nil && [12].include?(@movimiento.estado_id) && @movimiento.tipo_id == 4
              @movimiento.estado_id = estadoant
        end
          @movimiento.save
            if @movimiento.estado_id != estadoant 
                if [12].include?(@movimiento.estado_id) && @movimiento.tipo_id == 4 && ![10].include?(current_user.rol_id)
                    @movdest = Movimiento.new
                    @movdest.tipo_id = 3
                    @movdest.almacen_id = @movimiento.oridest
                    @movdest.oridest = @movimiento.almacen_id
                    @movdest.movimiento_id = @movimiento.id
                    @movdest.user_id = @movimiento.user_id
                    @movant = Movimiento.find(:last, :conditions=>{:almacen_id=>@movdest.almacen_id},:order=>"id")
                    @movdest.consec = @movant ? @movant.consec + 1 : 1
                    @movdest.descripcion = @movimiento.descripcion
                    @movdest.estado_id = 13
                    @movdest.fecha = @movimiento.fecha
                    @movdest.partida_id = @movimiento.partida_id
                    @movdest.save
                end
                @movimiento.importe = 0.0
                @lotes.each do |lote|
                    if @movimiento.tipo_id == 4 && [12].include?(@movimiento.estado_id) && ![10].include?(current_user.rol_id)
                        lote.movimiento_id = @movdest.id
                        lote.almacen_id = @movdest.almacen_id
                        lote.estado_id = @movdest.estado_id
                    else	
                        lote.estado_id = @movimiento.estado_id
                    end
                    lote.fecha = @movimiento.fecha
                    if lote.lote == ""
                        lote.lote = nil
                    end	
                    lote.save
                    @movimiento.importe = @movimiento.importe + (lote.cantidadp * lote.precio)
                end
                if [12].include?(@movimiento.estado_id) && !@movimiento.ped_id.blank?
                    plazo = @movimiento.fecha - @movimiento.ped.entrega
                    @movimiento.sancion = @movimiento.importe * 0.01 * (plazo <= 0 ? 0.0 : plazo)
                    if @movimiento.sancion == 0.0
                        @movimiento.sancion = nil
                    end	
                    @movimiento.save
                end	
            end
                flash[:notice] = 'Movimiento fue actualizado.'
                format.html { redirect_to(@movimiento) }
                format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @movimiento.errors, :status => :unprocessable_entity }
        end
      end
    end  
    # DELETE /movimientos/1
    # DELETE /movimientos/1.xml
    def destroy
        @movimiento = Movimiento.find(params[:id])
        @lotese = Lote.where("movimiento_id=?",@movimiento.id).first()
        @lotess = Lote.where("salida_id=?",@movimiento.id).first()
        if @lotese == nil && @lotess == nil && Movimiento.where("almacen_id=?",@movimiento.almacen_id).last.order(:consec).id = @movimiento.id
            @movimiento.destroy
        else 	
            flash[:notice] = 'Error: Movimiento con lotes no se puede borrar'
        end
            respond_to do |format|
            format.html { redirect_to(movimientos_path(:almacen=>@movimiento.almacen_id)) }
            format.xml  { head :ok }
        end
    end
end