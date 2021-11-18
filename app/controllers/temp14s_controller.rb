class Temp14sController < ApplicationController
  before_action :set_temp14, only: %i[ show edit update destroy ]

  # GET /temp14s or /temp14s.json
  def index
    @temp14s = Temp14.all
  end

  # GET /temp14s/1 or /temp14s/1.json
  def show
  end

  # GET /temp14s/new
  def new
    @temp14 = Temp14.new
  end

  # GET /temp14s/1/edit
  def edit
  end

  # POST /temp14s or /temp14s.json
  def create
    @temp14 = Temp14.new(temp14_params)

    respond_to do |format|
      if @temp14.save
        format.html { redirect_to @temp14, notice: "Temp14 was successfully created." }
        format.json { render :show, status: :created, location: @temp14 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp14s/1 or /temp14s/1.json
  def update
    respond_to do |format|
      if @temp14.update(temp14_params)
        format.html { redirect_to @temp14, notice: "Temp14 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp14 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp14s/1 or /temp14s/1.json
  def destroy
    @temp14.destroy
    respond_to do |format|
      format.html { redirect_to temp14s_url, notice: "Temp14 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp14
      @temp14 = Temp14.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp14_params
      params.require(:temp14).permit(:ped_id, :detped_id, :anexo, :renglon, :partida_id, :partida, :catalogo_id, :clave, :descripcion, :presentacion, :precio, :prov_id, :fiscal, :marca, :proceso_id, :proceso, :empates, :fuente_id, :fuente, :clue_id, :almacen_id, :unidad, :programa_id, :cveprog, :programa, :subprog2011, :accion2011, :cantidad, :importe, :requisicion_id, :renglon_id, :sinonimo, :actividad, :entrega, :cp_id)
    end
end
