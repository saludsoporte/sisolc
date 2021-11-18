class MovimientosController < ApplicationController
  before_action :set_movimiento, only: %i[ show edit update destroy ]

  # GET /movimientos or /movimientos.json
  def index
    @movimientos = Movimiento.all
  end

  # GET /movimientos/1 or /movimientos/1.json
  def show
  end

  # GET /movimientos/new
  def new
    @movimiento = Movimiento.new
  end

  # GET /movimientos/1/edit
  def edit
  end

  # POST /movimientos or /movimientos.json
  def create
    @movimiento = Movimiento.new(movimiento_params)

    respond_to do |format|
      if @movimiento.save
        format.html { redirect_to @movimiento, notice: "Movimiento was successfully created." }
        format.json { render :show, status: :created, location: @movimiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimientos/1 or /movimientos/1.json
  def update
    respond_to do |format|
      if @movimiento.update(movimiento_params)
        format.html { redirect_to @movimiento, notice: "Movimiento was successfully updated." }
        format.json { render :show, status: :ok, location: @movimiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimientos/1 or /movimientos/1.json
  def destroy
    @movimiento.destroy
    respond_to do |format|
      format.html { redirect_to movimientos_url, notice: "Movimiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = Movimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movimiento_params
      params.require(:movimiento).permit(:almacen_id, :movimiento_id, :ped_id, :oridest, :user_id, :descripcion, :tipo_id, :consec, :estado_id, :fecha, :partida_id, :sancion, :importe, :factura, :fechafac, :impfac, :pedido, :facrepc, :nfacrep, :tipo2, :notacre, :montonota, :cve_factura_sacp, :facrep)
    end
end
