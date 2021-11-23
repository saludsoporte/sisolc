class SolicitudsController < ApplicationController
#  include AuthenticatedSystem

# before_action :login_required
  before_action :login_required

  def prueba
    @requisicion = params[:solicitud_requisicion_id]
        if @requisicion != nil && @requisicion != "" && Integer(@requisicion) >0
                @renglones = Renglon.where("requisicion_id =?",@requisicion).order(:renglon)
        end
  end

  # GET /solicituds
  # GET /solicituds.xml
  def index
        @soltipo = params[:ano]     
        if @soltipo != nil && @soltipo == '2'
                @solicituds = Solicitud.paginate(page:params[:page]).where("estado_id in (1,2,3,9)").order(id: :DESC)
                @periodos = []
        else
                @periodos = Solicitud.find_by_sql ["select distinct extract(year from created_at) ANO from solicituds order by ano"]
                if params[:ano] != ""
                  logger.debug "***************************************///////////////////// entroooo"
                        @solicituds = Solicitud.paginate(page:params[:page]).where("estado_id in (1,2,3,9) and  extract(year from created_at) = ? and user_id = ?",params[:ano],current_user.id)
                #find_by_sql("select * from solicituds where estado_id in (1,2,3,9)  and user_id = ?",  current_user.id)
#                        @solicituds = Solicitud.find(:all, 
#                                      :conditions=>["extract(year from created_at) = ?",
#                                      params[:ano].to_i], :order=>"id DESC")                    
                else
                        @solicituds = []
                end            
        end    
  end

  # GET /solicituds/1
  # GET /solicituds/1.xml
  def show
    logger.debug "... solicituds/1 #{params}"

    @solicitud = Solicitud.find(params[:id])

    ret = Articulo.find_by_sql(["select * from articulos where solicitud_id=?", @solicitud.id])
    @articulos = ret[0]

    @peds = Ped.find_by_sql(["select * from peds where renglon_id = ?", @solicitud.id])[0]

    if @peds != nil 
      @detpeds = Detped.find_by_sql(["select * from detpeds where ped_id = ? ", @solicitud.id])
    else
            @detpeds = nil
    end
        
    respond_to do |format|
    format.html # show.html.erb
	  format.xml  { render :xml => @solicitud }
    end
  end

  # GET /solicituds/new
  # GET /solicituds/new.xml
  def new
    @solicitud = Solicitud.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solicitud }
    end
  end

  # GET /solicituds/1/edit
  def edit
    @solicitud = Solicitud.find(params[:id])
        @tieneart = Articulo.find(:first, :conditions =>{:solicitud_id=> @solicitud.id})
        if @solicitud.adqui_id != current_user.id && ![10,15].include?(current_user.rol_id) && 
           !([1,2,3].include?(@solicitud.estado_id) && 
           [@solicitud.vobotecnico_id,@solicitud.user_id].include?(current_user.id)) &&
           (![5].include?(current_user.rol_id) || ![15].include?(current_user.dato2))

                flash[:notice] = 'Esta solicitud no es modificable'
                redirect_to(@solicitud)
        end
  end

  # POST /solicituds
  # POST /solicituds.xml
  def create
    @solicitud = Solicitud.new(params[:solicitud])

    respond_to do |format|
      if @solicitud.save
        flash[:notice] = 'Solicitud agregada correctamente.'
        format.html { redirect_to(@solicitud) }
        format.xml  { render :xml => @solicitud, :status => :created, :location => @solicitud }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @solicitud.errors, :status => :unprocessable_entity }
      end
    end
  end

end
