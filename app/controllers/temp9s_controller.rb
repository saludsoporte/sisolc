class Temp9sController < ApplicationController
  before_action :set_temp9, only: %i[ show edit update destroy ]

  # GET /temp9s or /temp9s.json
  def index
    @temp9s = Temp9.all
  end

  # GET /temp9s/1 or /temp9s/1.json
  def show
  end

  # GET /temp9s/new
  def new
    @temp9 = Temp9.new
  end

  # GET /temp9s/1/edit
  def edit
  end

  # POST /temp9s or /temp9s.json
  def create
    @temp9 = Temp9.new(temp9_params)

    respond_to do |format|
      if @temp9.save
        format.html { redirect_to @temp9, notice: "Temp9 was successfully created." }
        format.json { render :show, status: :created, location: @temp9 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp9s/1 or /temp9s/1.json
  def update
    respond_to do |format|
      if @temp9.update(temp9_params)
        format.html { redirect_to @temp9, notice: "Temp9 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp9 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp9s/1 or /temp9s/1.json
  def destroy
    @temp9.destroy
    respond_to do |format|
      format.html { redirect_to temp9s_url, notice: "Temp9 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp9
      @temp9 = Temp9.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp9_params
      params.require(:temp9).permit(:almacen, :almacen_id, :fuentecve, :fuente, :fuente_id, :partida, :partida_id, :clave, :sinonimo, :catalogo_id, :descripcion, :presentacion, :cantidadp, :precio, :lote, :caducidad, :existencia, :monto, :movimiento_id, :estado_id)
    end
end
