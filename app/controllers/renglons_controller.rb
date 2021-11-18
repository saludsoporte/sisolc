class RenglonsController < ApplicationController
  before_action :set_renglon, only: %i[ show edit update destroy ]

  # GET /renglons or /renglons.json
  def index
    @renglons = Renglon.all
  end

  # GET /renglons/1 or /renglons/1.json
  def show
  end

  # GET /renglons/new
  def new
    @renglon = Renglon.new
  end

  # GET /renglons/1/edit
  def edit
  end

  # POST /renglons or /renglons.json
  def create
    @renglon = Renglon.new(renglon_params)

    respond_to do |format|
      if @renglon.save
        format.html { redirect_to @renglon, notice: "Renglon was successfully created." }
        format.json { render :show, status: :created, location: @renglon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @renglon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renglons/1 or /renglons/1.json
  def update
    respond_to do |format|
      if @renglon.update(renglon_params)
        format.html { redirect_to @renglon, notice: "Renglon was successfully updated." }
        format.json { render :show, status: :ok, location: @renglon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @renglon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renglons/1 or /renglons/1.json
  def destroy
    @renglon.destroy
    respond_to do |format|
      format.html { redirect_to renglons_url, notice: "Renglon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renglon
      @renglon = Renglon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def renglon_params
      params.require(:renglon).permit(:requisicion_id, :renglon, :proyecto_id, :programa_id, :clues_id, :partida_id, :ejercicio, :descripcion, :importe, :etiqueta_id, :cant_detpeds)
    end
end
