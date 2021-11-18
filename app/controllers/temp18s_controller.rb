class Temp18sController < ApplicationController
  before_action :set_temp18, only: %i[ show edit update destroy ]

  # GET /temp18s or /temp18s.json
  def index
    @temp18s = Temp18.all
  end

  # GET /temp18s/1 or /temp18s/1.json
  def show
  end

  # GET /temp18s/new
  def new
    @temp18 = Temp18.new
  end

  # GET /temp18s/1/edit
  def edit
  end

  # POST /temp18s or /temp18s.json
  def create
    @temp18 = Temp18.new(temp18_params)

    respond_to do |format|
      if @temp18.save
        format.html { redirect_to @temp18, notice: "Temp18 was successfully created." }
        format.json { render :show, status: :created, location: @temp18 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp18s/1 or /temp18s/1.json
  def update
    respond_to do |format|
      if @temp18.update(temp18_params)
        format.html { redirect_to @temp18, notice: "Temp18 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp18 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp18s/1 or /temp18s/1.json
  def destroy
    @temp18.destroy
    respond_to do |format|
      format.html { redirect_to temp18s_url, notice: "Temp18 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp18
      @temp18 = Temp18.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp18_params
      params.require(:temp18).permit(:id, :clues_id, :proceso_id, :fecha, :proveedor_id, :condiciones_id, :almacen_id, :entrega, :requisicion_id, :programa_id, :observaciones, :user_id, :jda_id, :so_id, :cp_id, :da_id, :dg_id, :adq_id, :subtotal, :iva, :total, :estado_id, :renglon_id, :tipo_id, :partida_id, :pena, :contrato, :fuente_id, :fianza_id)
    end
end
