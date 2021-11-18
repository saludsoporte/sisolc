class PedsController < ApplicationController
  before_action :set_ped, only: %i[ show edit update destroy ]

  # GET /peds or /peds.json
  def index
    @peds = Ped.all
  end

  # GET /peds/1 or /peds/1.json
  def show
  end

  # GET /peds/new
  def new
    @ped = Ped.new
  end

  # GET /peds/1/edit
  def edit
  end

  # POST /peds or /peds.json
  def create
    @ped = Ped.new(ped_params)

    respond_to do |format|
      if @ped.save
        format.html { redirect_to @ped, notice: "Ped was successfully created." }
        format.json { render :show, status: :created, location: @ped }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ped.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peds/1 or /peds/1.json
  def update
    respond_to do |format|
      if @ped.update(ped_params)
        format.html { redirect_to @ped, notice: "Ped was successfully updated." }
        format.json { render :show, status: :ok, location: @ped }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ped.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peds/1 or /peds/1.json
  def destroy
    @ped.destroy
    respond_to do |format|
      format.html { redirect_to peds_url, notice: "Ped was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ped
      @ped = Ped.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ped_params
      params.require(:ped).permit(:clues_id, :proceso_id, :fecha, :proveedor_id, :condiciones_id, :almacen_id, :entrega, :requisicion_id, :programa_id, :observaciones, :user_id, :jda_id, :so_id, :cp_id, :da_id, :dg_id, :adq_id, :subtotal, :iva, :total, :estado_id, :renglon_id, :tipo_id, :partida_id, :pena, :contrato, :fuente_id, :fianza_id, :facfianza, :reqexterna, :requi2_id, :requi3_id, :requi4_id, :montoreq, :montoreq2, :montoreq3, :montoreq4, :requi5_id)
    end
end
