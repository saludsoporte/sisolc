class PartidasController < ApplicationController
  before_action :login_required 
  # GET /partidas
  # GET /partidas.xml
  def index
	@partidas = case current_user.rol_id
		when 12	then @partidas = Partida.paginate(page:params[:page]).where("partida between 5000 and 5999").order(:partida)
		when 13	then @partidas = Partida.paginate(page:params[:page]).where("partida between 1000 and 3999").order(:partida)
		when 14	then @partidas = Partida.paginate(page:params[:page]).where("partida between 5300 and 5399").order(:partida)
		else Partida.all().order(:partida)
	end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @partidas }
    end
  end

  # GET /partidas/1
  # GET /partidas/1.xml
  def show
    @partida = Partida.find(params[:id])    
    @catalogos = Catalogo.where("partida_id = ?",@partida.id).order(:clave)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @partida }
    end
  end

  def excel
    @partida = Partida.find(params[:id])
    @catalogos = Catalogo.find_by("partida_id = ?",@partida.id).order(:clave)
  end

  # GET /partidas/new
  # GET /partidas/new.xml
  def new
    @partida = Partida.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @partida }
    end
  end

  # GET /partidas/1/edit
  def edit
    @partida = Partida.find(params[:id])
  end

  # POST /partidas
  # POST /partidas.xml
  def create
    @partida = Partida.new(params[:partida])

    respond_to do |format|
      if @partida.save
        flash[:notice] = 'Partida was successfully created.'
        format.html { redirect_to(partidas_url) }
        format.xml  { render :xml => @partida, :status => :created, :location => @partida }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @partida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /partidas/1
  # PUT /partidas/1.xml
  def update
    @partida = Partida.find(params[:id])

    respond_to do |format|
      if @partida.update_attributes(params[:partida])
        flash[:notice] = 'Partida was successfully updated.'
        format.html { redirect_to(partidas_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @partida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /partidas/1
  # DELETE /partidas/1.xml
  def destroy
    @partida = Partida.find(params[:id])
    @partida.destroy

    respond_to do |format|
      format.html { redirect_to(partidas_url) }
      format.xml  { head :ok }
    end
  end
end

