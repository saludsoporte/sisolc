class FianzasController < ApplicationController
  before_action :set_fianza, only: %i[ show edit update destroy ]

  # GET /fianzas or /fianzas.json
  def index
    @fianzas = Fianza.all
  end

  # GET /fianzas/1 or /fianzas/1.json
  def show
  end

  # GET /fianzas/new
  def new
    @fianza = Fianza.new
  end

  # GET /fianzas/1/edit
  def edit
  end

  # POST /fianzas or /fianzas.json
  def create
    @fianza = Fianza.new(fianza_params)

    respond_to do |format|
      if @fianza.save
        format.html { redirect_to @fianza, notice: "Fianza was successfully created." }
        format.json { render :show, status: :created, location: @fianza }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fianzas/1 or /fianzas/1.json
  def update
    respond_to do |format|
      if @fianza.update(fianza_params)
        format.html { redirect_to @fianza, notice: "Fianza was successfully updated." }
        format.json { render :show, status: :ok, location: @fianza }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fianzas/1 or /fianzas/1.json
  def destroy
    @fianza.destroy
    respond_to do |format|
      format.html { redirect_to fianzas_url, notice: "Fianza was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fianza
      @fianza = Fianza.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fianza_params
      params.require(:fianza).permit(:user_id, :fecha, :vence, :observa, :proceso_id, :prov_id, :monto, :estado_id, :tipo_id, :contratos, :contrato_id, :imp_peds, :clave, :situacion)
    end
end
