class Temp1sController < ApplicationController
  before_action :set_temp1, only: %i[ show edit update destroy ]

  # GET /temp1s or /temp1s.json
  def index
    @temp1s = Temp1.all
  end

  # GET /temp1s/1 or /temp1s/1.json
  def show
  end

  # GET /temp1s/new
  def new
    @temp1 = Temp1.new
  end

  # GET /temp1s/1/edit
  def edit
  end

  # POST /temp1s or /temp1s.json
  def create
    @temp1 = Temp1.new(temp1_params)

    respond_to do |format|
      if @temp1.save
        format.html { redirect_to @temp1, notice: "Temp1 was successfully created." }
        format.json { render :show, status: :created, location: @temp1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp1s/1 or /temp1s/1.json
  def update
    respond_to do |format|
      if @temp1.update(temp1_params)
        format.html { redirect_to @temp1, notice: "Temp1 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp1s/1 or /temp1s/1.json
  def destroy
    @temp1.destroy
    respond_to do |format|
      format.html { redirect_to temp1s_url, notice: "Temp1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp1
      @temp1 = Temp1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp1_params
      params.require(:temp1).permit(:idpedido, :partida, :idarticulo, :descripcio, :presentaci, :marca, :cantidad, :nombreunid, :preciounit, :nombrefuen, :requisicio, :fiscal, :ejercicio)
    end
end
