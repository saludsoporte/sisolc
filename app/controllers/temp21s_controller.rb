class Temp21sController < ApplicationController
  before_action :set_temp21, only: %i[ show edit update destroy ]

  # GET /temp21s or /temp21s.json
  def index
    @temp21s = Temp21.all
  end

  # GET /temp21s/1 or /temp21s/1.json
  def show
  end

  # GET /temp21s/new
  def new
    @temp21 = Temp21.new
  end

  # GET /temp21s/1/edit
  def edit
  end

  # POST /temp21s or /temp21s.json
  def create
    @temp21 = Temp21.new(temp21_params)

    respond_to do |format|
      if @temp21.save
        format.html { redirect_to @temp21, notice: "Temp21 was successfully created." }
        format.json { render :show, status: :created, location: @temp21 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp21.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp21s/1 or /temp21s/1.json
  def update
    respond_to do |format|
      if @temp21.update(temp21_params)
        format.html { redirect_to @temp21, notice: "Temp21 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp21 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp21.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp21s/1 or /temp21s/1.json
  def destroy
    @temp21.destroy
    respond_to do |format|
      format.html { redirect_to temp21s_url, notice: "Temp21 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp21
      @temp21 = Temp21.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp21_params
      params.require(:temp21).permit(:almacen, :almacen_id, :fuentecve, :fuente, :fuente_id, :partida, :partida_id, :clave, :sinonimo, :catalogo_id, :descripcion, :presentacion, :cantidadp, :precio, :lote, :caducidad, :existencia, :monto, :movimiento_id, :estado_id)
    end
end
