class RenglonsController < ApplicationController
    before_action :login_required
    # GET /renglons
    # GET /renglons.xml
    def index
      @renglons = Renglon.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @renglons }
      end
    end
  
    # GET /renglons/1
    # GET /renglons/1.xml
    def show
      @renglon = Renglon.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @renglon }
      end
    end
  
    # GET /renglons/new
    # GET /renglons/new.xml
    def new
      @renglon = Renglon.new
      @requisicion = params[:requisicion_id]
      @renglon.programa_id = params[:programa_id]
      @renglon.proyecto_id = params[:proyecto_id]
      @renglon.clues_id = params[:clues_id]
      @renglon.importe = params[:importe]
      @renglon.partida_id = params[:partida_id]
  
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @renglon }
      end
    end
  
    # GET /renglons/1/edit
    def edit
      @renglon = Renglon.find(params[:id])
    end
  
    # POST /renglons
    # POST /renglons.xml
    def create
      @renglon = Renglon.new(params[:renglon])
      @duplicado = Renglon.find(:first, :conditions => {:requisicion_id => @renglon.requisicion_id, :renglon => @renglon.renglon})
      respond_to do |format|
        if @duplicado == nil &&!@renglon.renglon.empty? && !@renglon.renglon.nil? && @renglon.save
          @imporreq = 0.0
          @renglons = Renglon.find(:all, :conditions => {:requisicion_id => @renglon.requisicion_id})
          for renglon in @renglons
              if renglon.importe != nil
                  @imporreq = @imporreq + renglon.importe
              end
          end
          @requisicion = Requisicion.find(:first, :conditions => {:id =>@renglon.requisicion_id})
          @requisicion.importe = @imporreq
          @requisicion.save
          flash[:notice] = 'Renglon fue creado con exito.'
          format.html { redirect_to(@requisicion) }
          format.xml  { render :xml => @renglon, :status => :created, :location => @renglon }
        else
          flash[:notice] = 'Error creando renglon: Posible problema con la clave del renglon.'
          format.html { redirect_to(requisicion_path(@renglon.requisicion_id)) }
          format.xml  { render :xml => @renglon.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # PUT /renglons/1
    # PUT /renglons/1.xml
    def update
      @renglon = Renglon.find(params[:id])
  
      respond_to do |format|
        if @renglon.update_attributes(params[:renglon])
           @imporreq = 0.0
          @renglons = Renglon.find(:all, :conditions => {:requisicion_id => @renglon.requisicion_id})
          for renglon in @renglons
              if renglon.importe != nil
                  @imporreq = @imporreq + renglon.importe
              end
          end
          @requisicion = Requisicion.find(:first, :conditions => {:id =>@renglon.requisicion_id})
          @requisicion.importe = @imporreq
          @requisicion.save
         flash[:notice] = 'Renglon fue actualizado con exito.'
          format.html { redirect_to(@requisicion) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @renglon.errors, :status => :unprocessable_entity }
        end
      end
    end
  
    # DELETE /renglons/1
    # DELETE /renglons/1.xml
    def destroy
      @renglon = Renglon.find(params[:id])
      if @renglon != nil && @renglon.destroy
          @req = @renglon.requisicion_id
          @imporreq = 0.0
          @renglons = Renglon.find(:all, :conditions => {:requisicion_id => @req})
          if @renglons != nil
              for renglon in @renglons
                  if renglon.importe != nil
                      @imporreq = @imporreq + renglon.importe
                  end
              end	
          end
          @requisicion = Requisicion.find(:first, :conditions => {:id =>@req})
          @requisicion.importe = @imporreq
          @requisicion.save
      end
      respond_to do |format|
        format.html { redirect_to(@requisicion) }
        format.xml  { head :ok }
      end
    end
end
  