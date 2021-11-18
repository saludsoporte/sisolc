class Temp13sController < ApplicationController
  before_action :set_temp13, only: %i[ show edit update destroy ]

  # GET /temp13s or /temp13s.json
  def index
    @temp13s = Temp13.all
  end

  # GET /temp13s/1 or /temp13s/1.json
  def show
  end

  # GET /temp13s/new
  def new
    @temp13 = Temp13.new
  end

  # GET /temp13s/1/edit
  def edit
  end

  # POST /temp13s or /temp13s.json
  def create
    @temp13 = Temp13.new(temp13_params)

    respond_to do |format|
      if @temp13.save
        format.html { redirect_to @temp13, notice: "Temp13 was successfully created." }
        format.json { render :show, status: :created, location: @temp13 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp13s/1 or /temp13s/1.json
  def update
    respond_to do |format|
      if @temp13.update(temp13_params)
        format.html { redirect_to @temp13, notice: "Temp13 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp13 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp13s/1 or /temp13s/1.json
  def destroy
    @temp13.destroy
    respond_to do |format|
      format.html { redirect_to temp13s_url, notice: "Temp13 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp13
      @temp13 = Temp13.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp13_params
      params.require(:temp13).permit(:ped_id, :detped_id, :anexo, :renglon, :partida_id, :partida, :catalogo_id, :clave, :descripcion, :presentacion, :precio, :prov_id, :fiscal, :marca, :proceso_id, :proceso, :empates, :fuente_id, :fuente, :clue_id, :almacen_id, :unidad, :programa_id, :cveprog, :programa, :subprog2011, :accion2011, :cantidad, :importe, :requisicion_id, :renglon_id, :sinonimo, :actividad, :entrega, :cp_id)
    end
end
