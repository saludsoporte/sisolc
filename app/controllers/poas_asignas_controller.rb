class PoasAsignasController < ApplicationController
  before_action :set_poas_asigna, only: %i[ show edit update destroy ]

  # GET /poas_asignas or /poas_asignas.json
  def index
    @poas_asignas = PoasAsigna.all
  end

  # GET /poas_asignas/1 or /poas_asignas/1.json
  def show
  end

  # GET /poas_asignas/new
  def new
    @poas_asigna = PoasAsigna.new
  end

  # GET /poas_asignas/1/edit
  def edit
  end

  # POST /poas_asignas or /poas_asignas.json
  def create
    @poas_asigna = PoasAsigna.new(poas_asigna_params)

    respond_to do |format|
      if @poas_asigna.save
        format.html { redirect_to @poas_asigna, notice: "Poas asigna was successfully created." }
        format.json { render :show, status: :created, location: @poas_asigna }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poas_asigna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poas_asignas/1 or /poas_asignas/1.json
  def update
    respond_to do |format|
      if @poas_asigna.update(poas_asigna_params)
        format.html { redirect_to @poas_asigna, notice: "Poas asigna was successfully updated." }
        format.json { render :show, status: :ok, location: @poas_asigna }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poas_asigna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poas_asignas/1 or /poas_asignas/1.json
  def destroy
    @poas_asigna.destroy
    respond_to do |format|
      format.html { redirect_to poas_asignas_url, notice: "Poas asigna was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poas_asigna
      @poas_asigna = PoasAsigna.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poas_asigna_params
      params.require(:poas_asigna).permit(:poas_id, :proceso_id, :clues_id, :almacen_id, :proveedor_id, :proveedor, :precio, :iva, :empate, :clave_id, :articulo, :sino, :descripcion, :presentacion, :marca, :cantidad, :entrega_1, :entrega_fecha_1, :detpeds_id_1, :entrega_2, :entrega_fecha_2, :detpeds_id_2, :entrega_3, :entrega_fecha_3, :detpeds_id_3, :entrega_4, :entrega_fecha_4, :detpeds_id_4, :entrega_5, :entrega_fecha_5, :detpeds_id_5, :sacp_anio_pago, :sacp_requisi_pago, :sacp_interno_pago, :cve_presup, :cve_centro_resp, :sacp_requisi, :sacp_interno, :sacp_anio, :sacp_esq, :fuente_id)
    end
end
