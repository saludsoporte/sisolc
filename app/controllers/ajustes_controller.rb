class AjustesController < ApplicationController
    # GET /ajustes
    # GET /ajustes.xml
    def index
      #    @mialmacen = Almacen.find_by_sql ["select id from almacens where ? in(user_id,almac1_id,almac2_id,almac3_id,almac4_id,almac5_id,almac6_id,almac7_id) order by id",current_user.id]
          @ajustes = Ajuste.where("id between 49 and 1000000").order(:almacen_id,:id)
      
          respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @ajustes }
          end
    end
      
        # GET /ajustes/1
        # GET /ajustes/1.xml
        def show
          @ajuste = Ajuste.find(params[:id])
      
          respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @ajuste }
          end
        end
      
        # GET /ajustes/new
        # GET /ajustes/new.xml
        def new
          @ajuste = Ajuste.where("lote_id=?",params[:lote].to_i)
          if !@ajuste
              @ajuste = Ajuste.new
              @lote_id = params[:lote].to_i
              @ajuste.lote_id = @lote_id
              @ajuste.fecharep = params[:hasta].to_date
              respond_to do |format|
              format.html # new.html.erb
              format.xml  { render :xml => @ajuste }
              end
          else
              redirect_to(reporte_path(12,:almacen_id=>@ajuste.almacen_id,:partida_id=>@ajuste.partida_id,:fuente_id=>@ajuste.fuente_id))
          end	
        end
      
        # GET /ajustes/1/edit
        def edit
          @ajuste = Ajuste.find(params[:ajuste])
          @lote_id = @ajuste.lote_id
          @ajuste.fecharep = params[:hasta].to_date
        end
      
        # POST /ajustes
        # POST /ajustes.xml
        def create
          @ajuste = Ajuste.new(params[:ajuste])
          if @ajuste.lote_id
              @lote = Lote.find(@ajuste.lote_id)
              @ajuste.almacen_id = @lote.almacen_id
              @ajuste.partida_id = @lote.partida_id
              @ajuste.fuente_id = @lote.fuente_id
          end
          respond_to do |format|
            if @ajuste.save
              flash[:notice] = 'Ajuste fue creado.'
              format.html { redirect_to(@ajuste.lote_id == nil ? ajustes_path : reporte_path(12,:almacen_id=>@ajuste.almacen_id,:partida_id=>@ajuste.partida_id,:fuente_id=>@ajuste.fuente_id)) }
              format.xml  { render :xml => @ajuste, :status => :created, :location => @ajuste }
            else
              format.html { render :action => "new" }
              format.xml  { render :xml => @ajuste.errors, :status => :unprocessable_entity }
            end
          end
        end
      
        # PUT /ajustes/1
        # PUT /ajustes/1.xml
        def update
          @ajuste = Ajuste.find(params[:id])
          @lote = Lote.find(@ajuste.lote_id)
          @ajustenuevo = Ajuste.new(params[:ajuste])
          if @ajuste.estado_id == 12 and ![10].include?(current_user.rol_id)
              flash[:notice] = 'Ajuste ya aplicado no puede modificarse'
              redirect_to(ajustes_path)
              return
          end
          if @aplicado || @lote.existencia == 0.0  || ((@ajuste.lote).blank? || @ajuste.lote == nil || (@ajustenuevo.lote == @lote.lote)) and (@ajuste.caducidad == nil || @lote.caducidad == @ajustenuevo.caducidad)
              flash[:notice] = 'Ajuste sin cambios o sobre lote sin existencia no fue aplicado.'
              redirect_to(ajustes_path)
              return
          end
          @aplicado = @ajustenuevo.estado_id == 12 && (@ajuste.estado_id == nil || @ajuste.estado_id != 12)
          if @aplicado && (@lote.existencia == 0.0  || ((@ajustenuevo.lote).blank? || @ajustenuevo.lote == nil || (@ajustenuevo.lote == @lote.lote)) and (@ajustenuevo.caducidad == nil || @lote.caducidad == @ajustenuevo.caducidad))
              flash[:notice] = 'Ajuste sin cambios o sobre lote sin existencia no fue aplicado.'
              redirect_to(ajustes_path)
              return
          end
          respond_to do |format|
            if @ajuste.update_attributes(params[:ajuste])
                  if @aplicado
                      if @ajuste.caducidad != nil
                          @caducidad = @ajuste.caducidad
                          @ajuste.caducidad = @lote.caducidad
                          @lote.caducidad = @caducidad
                      end
                      if @ajuste.lote != nil and @ajuste.lote != ''
                          @cvelote = @ajuste.lote
                          @ajuste.lote = @lote.lote
                          @lote.lote = @cvelote
                      end
                      @ajuste.existen = @lote.existencia
                      @lote.save
                      @ajuste.save
                  end	
              flash[:notice] = 'Ajuste fue actualizado.'
              format.html { redirect_to(@ajuste.lote_id == nil ? ajustes_path : reporte_path(12,:almacen_id=>@ajuste.almacen_id,:partida_id=>@ajuste.partida_id,:fuente_id=>@ajuste.fuente_id)) }
              format.xml  { head :ok }
            else
              format.html { render :action => "edit" }
              format.xml  { render :xml => @ajuste.errors, :status => :unprocessable_entity }
            end
          end
        end
      
        # DELETE /ajustes/1
        # DELETE /ajustes/1.xml
        def destroy
          @ajuste = Ajuste.find(params[:id])
          if @ajuste.estado_id == 12 and ![10].include?(current_user.rol_id)
              flash[:notice] = 'Ajuste ya aplicado no puede eliminarse'
          else 
              @lote = Lote.find(@ajuste.lote_id)
              @lote.etiqueta_id = nil
              @lote.save
              @ajuste.destroy
          end
          respond_to do |format|
            format.html { redirect_to(ajustes_url) }
            format.xml  { head :ok }
          end
        end
    end
