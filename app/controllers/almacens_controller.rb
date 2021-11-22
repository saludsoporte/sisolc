class AlmacensController < ApplicationController
    before_action :login_required 
    # GET /almacens
    # GET /almacens.xml
    def index
      @almacens = Almacen.paginate(page:params[:page]).all().order(tipo: :asc,nombre: :asc)
  
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @almacens }
      end
    end
  
    # GET /almacens/1
    # GET /almacens/1.xml
    def show
      @almacen = Almacen.find(params[:id])
      @partida_id = params[:partida]
      @marbetes = params[:marbetes]
      @movimiento_id = params[:movimiento]

      logger.debug "*************** partida_id "+@partida_id.to_s
      logger.debug "*************** marbetes "+@marbetes.to_s
      logger.debug "*************** movimiento_id "+@movimiento_id.to_s
                 
      if @marbetes
          @existencias = Lote.paginate(page:params[:page]).where("existencia > 0.0 and almacen_id=?",@alamcen).order(:fuente_id,:partida_id,:catalogo_id )
          
          #find_by_sql ["select distinct almacen_id,fuente_id,partida_id,catalogo_id,lote,caducidad 
        #from lotes where existencia > 0.0 and almacen_id = ? order by fuente_id,partida_id,catalogo_id",@almacen]
      else
          if @partida_id == nil
              @existencias = Lote.paginate(page:params[:page]).where("existencia > 0.0 and almacen_id = ?",@almacen).order(:partida_id,:catalogo_id,:fuente_id,:caducidad)
              
              #find_by_sql ["select * from lotes where existencia > 0.0 and almacen_id = ? order by partida_id,catalogo_id,fuente_id,caducidad",@almacen]
          else
              @partida_id = @partida_id.to_i
              @existencias = Lote.paginate(page:params[:page]).where("existencia > 0.0 and almacen_id = ? and partida_id= ?",@almacen,@partida_id).order(:catalogo_id,:fuente_id,:caducidad)
              
              #find_by_sql ["select * from lotes where existencia > 0.0 and almacen_id = ? and partida_id = ? order by catalogo_id,fuente_id,caducidad",@almacen,@partida_id]
          end	
      end    
    end
  
    # GET /almacens/new
    # GET /almacens/new.xml
    def new
      @almacen = Almacen.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @almacen }
      end
    end
  
    # GET /almacens/1/edit
    def edit
      @almacen = Almacen.find(params[:id])
    end
  
    # POST /almacens
    # POST /almacens.xml
    def create
      @almacen = Almacen.new(params[:almacen])
  
      respond_to do |format|
        if @almacen.save
          flash[:notice] = 'Almacen was successfully created.'
          format.html { redirect_to(@almacen) }
          format.xml  { render :xml => @almacen, :status => :created, :location => @almacen }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @almacen.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # PUT /almacens/1
    # PUT /almacens/1.xml
    def update
      @almacen = Almacen.find(params[:id])
  
      respond_to do |format|
        if @almacen.update_attributes(params[:almacen])
          flash[:notice] = 'Almacen fue actualizado'
          format.html { redirect_to(almacens_path) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @almacen.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # DELETE /almacens/1
    # DELETE /almacens/1.xml
    def destroy
      @almacen = Almacen.find(params[:id])
      @almacen.destroy
  
      respond_to do |format|
        format.html { redirect_to(almacens_url) }
        format.xml  { head :ok }
      end
    end
end
  
