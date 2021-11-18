class Temp8sController < ApplicationController
  before_action :set_temp8, only: %i[ show edit update destroy ]

  # GET /temp8s or /temp8s.json
  def index
    @temp8s = Temp8.all
  end

  # GET /temp8s/1 or /temp8s/1.json
  def show
  end

  # GET /temp8s/new
  def new
    @temp8 = Temp8.new
  end

  # GET /temp8s/1/edit
  def edit
  end

  # POST /temp8s or /temp8s.json
  def create
    @temp8 = Temp8.new(temp8_params)

    respond_to do |format|
      if @temp8.save
        format.html { redirect_to @temp8, notice: "Temp8 was successfully created." }
        format.json { render :show, status: :created, location: @temp8 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp8s/1 or /temp8s/1.json
  def update
    respond_to do |format|
      if @temp8.update(temp8_params)
        format.html { redirect_to @temp8, notice: "Temp8 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp8 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp8s/1 or /temp8s/1.json
  def destroy
    @temp8.destroy
    respond_to do |format|
      format.html { redirect_to temp8s_url, notice: "Temp8 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp8
      @temp8 = Temp8.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp8_params
      params.require(:temp8).permit(:solicitud_id, :clues_id, :partida_id, :clave_id, :descripcion, :presentacion, :marca_mod, :cantidad, :precio, :caducidad, :almacen_id, :entregas, :requisicion_id, :renglon_id, :capacitacion, :muestra, :notas, :anexos, :user_id, :proceso_id, :ped_id)
    end
end
