class Temp3sController < ApplicationController
  before_action :set_temp3, only: %i[ show edit update destroy ]

  # GET /temp3s or /temp3s.json
  def index
    @temp3s = Temp3.all
  end

  # GET /temp3s/1 or /temp3s/1.json
  def show
  end

  # GET /temp3s/new
  def new
    @temp3 = Temp3.new
  end

  # GET /temp3s/1/edit
  def edit
  end

  # POST /temp3s or /temp3s.json
  def create
    @temp3 = Temp3.new(temp3_params)

    respond_to do |format|
      if @temp3.save
        format.html { redirect_to @temp3, notice: "Temp3 was successfully created." }
        format.json { render :show, status: :created, location: @temp3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp3s/1 or /temp3s/1.json
  def update
    respond_to do |format|
      if @temp3.update(temp3_params)
        format.html { redirect_to @temp3, notice: "Temp3 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp3s/1 or /temp3s/1.json
  def destroy
    @temp3.destroy
    respond_to do |format|
      format.html { redirect_to temp3s_url, notice: "Temp3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp3
      @temp3 = Temp3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp3_params
      params.require(:temp3).permit(:id, :clues_id, :proceso_id, :fecha, :proveedor_id, :condiciones_id, :almacen_id, :entrega, :requisicion_id, :programa_id, :observaciones, :user_id, :jda_id, :so_id, :cp_id, :da_id, :dg_id, :adq_id, :subtotal, :iva, :total, :estado_id, :renglon_id, :tipo_id, :partida_id, :pena, :contrato, :fuente_id, :fianza_id, :facfianza, :reqexterna, :requi2_id, :requi3_id, :requi4_id, :montoreq, :montoreq2, :montoreq3, :montoreq4)
    end
end
