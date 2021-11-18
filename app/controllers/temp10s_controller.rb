class Temp10sController < ApplicationController
  before_action :set_temp10, only: %i[ show edit update destroy ]

  # GET /temp10s or /temp10s.json
  def index
    @temp10s = Temp10.all
  end

  # GET /temp10s/1 or /temp10s/1.json
  def show
  end

  # GET /temp10s/new
  def new
    @temp10 = Temp10.new
  end

  # GET /temp10s/1/edit
  def edit
  end

  # POST /temp10s or /temp10s.json
  def create
    @temp10 = Temp10.new(temp10_params)

    respond_to do |format|
      if @temp10.save
        format.html { redirect_to @temp10, notice: "Temp10 was successfully created." }
        format.json { render :show, status: :created, location: @temp10 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp10s/1 or /temp10s/1.json
  def update
    respond_to do |format|
      if @temp10.update(temp10_params)
        format.html { redirect_to @temp10, notice: "Temp10 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp10 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp10s/1 or /temp10s/1.json
  def destroy
    @temp10.destroy
    respond_to do |format|
      format.html { redirect_to temp10s_url, notice: "Temp10 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp10
      @temp10 = Temp10.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp10_params
      params.require(:temp10).permit(:idpedido, :partida, :idarticulo, :descripcio, :presentaci, :marca, :cantidad, :nombreunid, :preciounit, :nombrefuen, :requisicio, :fiscal, :ejercicio)
    end
end
