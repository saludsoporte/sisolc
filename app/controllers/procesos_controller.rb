class ProcesosController < ApplicationController
  before_action :set_proceso, only: %i[ show edit update destroy ]

  # GET /procesos or /procesos.json
  def index
    @procesos = Proceso.all
  end

  # GET /procesos/1 or /procesos/1.json
  def show
  end

  # GET /procesos/new
  def new
    @proceso = Proceso.new
  end

  # GET /procesos/1/edit
  def edit
  end

  # POST /procesos or /procesos.json
  def create
    @proceso = Proceso.new(proceso_params)

    respond_to do |format|
      if @proceso.save
        format.html { redirect_to @proceso, notice: "Proceso was successfully created." }
        format.json { render :show, status: :created, location: @proceso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procesos/1 or /procesos/1.json
  def update
    respond_to do |format|
      if @proceso.update(proceso_params)
        format.html { redirect_to @proceso, notice: "Proceso was successfully updated." }
        format.json { render :show, status: :ok, location: @proceso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procesos/1 or /procesos/1.json
  def destroy
    @proceso.destroy
    respond_to do |format|
      format.html { redirect_to procesos_url, notice: "Proceso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceso
      @proceso = Proceso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proceso_params
      params.require(:proceso).permit(:proceso, :fecha, :tipopro_id, :partida_id, :observacion, :estado_id, :pena, :sancionmax, :tipo_id)
    end
end
