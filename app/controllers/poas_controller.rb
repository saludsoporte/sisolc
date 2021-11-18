class PoasController < ApplicationController
  before_action :set_poa, only: %i[ show edit update destroy ]

  # GET /poas or /poas.json
  def index
    @poas = Poa.all
  end

  # GET /poas/1 or /poas/1.json
  def show
  end

  # GET /poas/new
  def new
    @poa = Poa.new
  end

  # GET /poas/1/edit
  def edit
  end

  # POST /poas or /poas.json
  def create
    @poa = Poa.new(poa_params)

    respond_to do |format|
      if @poa.save
        format.html { redirect_to @poa, notice: "Poa was successfully created." }
        format.json { render :show, status: :created, location: @poa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poas/1 or /poas/1.json
  def update
    respond_to do |format|
      if @poa.update(poa_params)
        format.html { redirect_to @poa, notice: "Poa was successfully updated." }
        format.json { render :show, status: :ok, location: @poa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poas/1 or /poas/1.json
  def destroy
    @poa.destroy
    respond_to do |format|
      format.html { redirect_to poas_url, notice: "Poa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poa
      @poa = Poa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poa_params
      params.require(:poa).permit(:nombreuni, :programa, :subprograma, :accion, :intcauses, :afaspe, :partida, :articulo, :sino, :descripcion, :presentacion, :precioiva, :cantidad, :presupuesto, :fuente, :marca, :observacion, :preciolin, :sacp_requisi, :sacp_interno, :sacp_anio, :fuente_id, :accion_id, :clave_id, :sacp_esq, :clues_id)
    end
end
