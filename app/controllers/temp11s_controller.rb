class Temp11sController < ApplicationController
  before_action :set_temp11, only: %i[ show edit update destroy ]

  # GET /temp11s or /temp11s.json
  def index
    @temp11s = Temp11.all
  end

  # GET /temp11s/1 or /temp11s/1.json
  def show
  end

  # GET /temp11s/new
  def new
    @temp11 = Temp11.new
  end

  # GET /temp11s/1/edit
  def edit
  end

  # POST /temp11s or /temp11s.json
  def create
    @temp11 = Temp11.new(temp11_params)

    respond_to do |format|
      if @temp11.save
        format.html { redirect_to @temp11, notice: "Temp11 was successfully created." }
        format.json { render :show, status: :created, location: @temp11 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp11s/1 or /temp11s/1.json
  def update
    respond_to do |format|
      if @temp11.update(temp11_params)
        format.html { redirect_to @temp11, notice: "Temp11 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp11 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp11s/1 or /temp11s/1.json
  def destroy
    @temp11.destroy
    respond_to do |format|
      format.html { redirect_to temp11s_url, notice: "Temp11 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp11
      @temp11 = Temp11.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp11_params
      params.require(:temp11).permit(:ped_id, :detped_id, :anexo, :renglon, :partida_id, :partida, :catalogo_id, :clave, :descripcion, :presentacion, :precio, :prov_id, :fiscal, :marca, :proceso_id, :proceso, :empates, :fuente_id, :fuente, :clue_id, :almacen_id, :unidad, :programa_id, :cveprog, :programa, :subprog2011, :accion2011, :cantidad, :importe, :requisicion_id, :renglon_id, :sinonimo, :actividad, :entrega, :cp_id, :etiqueta)
    end
end
