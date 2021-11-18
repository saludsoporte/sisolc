class Temp15sController < ApplicationController
  before_action :set_temp15, only: %i[ show edit update destroy ]

  # GET /temp15s or /temp15s.json
  def index
    @temp15s = Temp15.all
  end

  # GET /temp15s/1 or /temp15s/1.json
  def show
  end

  # GET /temp15s/new
  def new
    @temp15 = Temp15.new
  end

  # GET /temp15s/1/edit
  def edit
  end

  # POST /temp15s or /temp15s.json
  def create
    @temp15 = Temp15.new(temp15_params)

    respond_to do |format|
      if @temp15.save
        format.html { redirect_to @temp15, notice: "Temp15 was successfully created." }
        format.json { render :show, status: :created, location: @temp15 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp15s/1 or /temp15s/1.json
  def update
    respond_to do |format|
      if @temp15.update(temp15_params)
        format.html { redirect_to @temp15, notice: "Temp15 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp15 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp15s/1 or /temp15s/1.json
  def destroy
    @temp15.destroy
    respond_to do |format|
      format.html { redirect_to temp15s_url, notice: "Temp15 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp15
      @temp15 = Temp15.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp15_params
      params.require(:temp15).permit(:ped_id, :detped_id, :anexo, :renglon, :partida_id, :partida, :catalogo_id, :clave, :descripcion, :presentacion, :precio, :prov_id, :fiscal, :marca, :proceso_id, :proceso, :empates, :fuente_id, :fuente, :clue_id, :almacen_id, :unidad, :programa_id, :cveprog, :programa, :subprog2011, :accion2011, :cantidad, :importe, :requisicion_id, :renglon_id, :sinonimo, :actividad, :entrega, :cp_id, :etiqueta)
    end
end
