class AjustesController < ApplicationController
  before_action :set_ajuste, only: %i[ show edit update destroy ]

  # GET /ajustes or /ajustes.json
  def index
    @ajustes = Ajuste.all
  end

  # GET /ajustes/1 or /ajustes/1.json
  def show
  end

  # GET /ajustes/new
  def new
    @ajuste = Ajuste.new
  end

  # GET /ajustes/1/edit
  def edit
  end

  # POST /ajustes or /ajustes.json
  def create
    @ajuste = Ajuste.new(ajuste_params)

    respond_to do |format|
      if @ajuste.save
        format.html { redirect_to @ajuste, notice: "Ajuste was successfully created." }
        format.json { render :show, status: :created, location: @ajuste }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ajuste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ajustes/1 or /ajustes/1.json
  def update
    respond_to do |format|
      if @ajuste.update(ajuste_params)
        format.html { redirect_to @ajuste, notice: "Ajuste was successfully updated." }
        format.json { render :show, status: :ok, location: @ajuste }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ajuste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajustes/1 or /ajustes/1.json
  def destroy
    @ajuste.destroy
    respond_to do |format|
      format.html { redirect_to ajustes_url, notice: "Ajuste was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ajuste
      @ajuste = Ajuste.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ajuste_params
      params.require(:ajuste).permit(:almacen_id, :partida_id, :fuente_id, :ajuste, :lote_id, :lote, :caducidad, :existen, :precio, :estado_id, :tipo_id, :fecharep, :catalogo_id, :descrip)
    end
end
