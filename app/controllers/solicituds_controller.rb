class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: %i[ show edit update destroy ]

  # GET /solicituds or /solicituds.json
  def index
    @solicituds = Solicitud.all
  end

  # GET /solicituds/1 or /solicituds/1.json
  def show
  end

  # GET /solicituds/new
  def new
    @solicitud = Solicitud.new
  end

  # GET /solicituds/1/edit
  def edit
  end

  # POST /solicituds or /solicituds.json
  def create
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: "Solicitud was successfully created." }
        format.json { render :show, status: :created, location: @solicitud }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicituds/1 or /solicituds/1.json
  def update
    respond_to do |format|
      if @solicitud.update(solicitud_params)
        format.html { redirect_to @solicitud, notice: "Solicitud was successfully updated." }
        format.json { render :show, status: :ok, location: @solicitud }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicituds/1 or /solicituds/1.json
  def destroy
    @solicitud.destroy
    respond_to do |format|
      format.html { redirect_to solicituds_url, notice: "Solicitud was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_params
      params.require(:solicitud).permit(:area_id, :user_id, :vobotecnico_id, :tipo_id, :partida_id, :requisicion_id, :renglon_id, :notas, :anexos, :recepcion, :estado_id, :fuente_id, :programa_id, :proyecto_id, :importe, :adqui_id, :techo, :tipotecho)
    end
end
