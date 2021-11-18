class LotesController < ApplicationController
  before_action :set_lote, only: %i[ show edit update destroy ]

  # GET /lotes or /lotes.json
  def index
    @lotes = Lote.all
  end

  # GET /lotes/1 or /lotes/1.json
  def show
  end

  # GET /lotes/new
  def new
    @lote = Lote.new
  end

  # GET /lotes/1/edit
  def edit
  end

  # POST /lotes or /lotes.json
  def create
    @lote = Lote.new(lote_params)

    respond_to do |format|
      if @lote.save
        format.html { redirect_to @lote, notice: "Lote was successfully created." }
        format.json { render :show, status: :created, location: @lote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lotes/1 or /lotes/1.json
  def update
    respond_to do |format|
      if @lote.update(lote_params)
        format.html { redirect_to @lote, notice: "Lote was successfully updated." }
        format.json { render :show, status: :ok, location: @lote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lotes/1 or /lotes/1.json
  def destroy
    @lote.destroy
    respond_to do |format|
      format.html { redirect_to lotes_url, notice: "Lote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lote
      @lote = Lote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lote_params
      params.require(:lote).permit(:catalogo_id, :ped_id, :cantidadp, :cantidadu, :existencia, :caducidad, :almacen_id, :fecha, :lote, :fuente_id, :precio, :observacion, :estado_id, :movimiento_id, :barras, :requisicion_id, :programa_id, :proyecto_id, :partida_id, :etiqueta_id, :detped_id, :lote_id, :renglon_id, :salida_id, :cargo, :abono, :observsal, :prov_id, :iva, :cartacom_id)
    end
end
