class Temp19sController < ApplicationController
  before_action :set_temp19, only: %i[ show edit update destroy ]

  # GET /temp19s or /temp19s.json
  def index
    @temp19s = Temp19.all
  end

  # GET /temp19s/1 or /temp19s/1.json
  def show
  end

  # GET /temp19s/new
  def new
    @temp19 = Temp19.new
  end

  # GET /temp19s/1/edit
  def edit
  end

  # POST /temp19s or /temp19s.json
  def create
    @temp19 = Temp19.new(temp19_params)

    respond_to do |format|
      if @temp19.save
        format.html { redirect_to @temp19, notice: "Temp19 was successfully created." }
        format.json { render :show, status: :created, location: @temp19 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp19s/1 or /temp19s/1.json
  def update
    respond_to do |format|
      if @temp19.update(temp19_params)
        format.html { redirect_to @temp19, notice: "Temp19 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp19 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp19s/1 or /temp19s/1.json
  def destroy
    @temp19.destroy
    respond_to do |format|
      format.html { redirect_to temp19s_url, notice: "Temp19 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp19
      @temp19 = Temp19.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp19_params
      params.require(:temp19).permit(:clue_id, :fuente_id, :programa_id, :importe, :proyecto_id, :requisicion_id, :ejercicio, :partida_id)
    end
end
