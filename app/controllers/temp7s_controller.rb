class Temp7sController < ApplicationController
  before_action :set_temp7, only: %i[ show edit update destroy ]

  # GET /temp7s or /temp7s.json
  def index
    @temp7s = Temp7.all
  end

  # GET /temp7s/1 or /temp7s/1.json
  def show
  end

  # GET /temp7s/new
  def new
    @temp7 = Temp7.new
  end

  # GET /temp7s/1/edit
  def edit
  end

  # POST /temp7s or /temp7s.json
  def create
    @temp7 = Temp7.new(temp7_params)

    respond_to do |format|
      if @temp7.save
        format.html { redirect_to @temp7, notice: "Temp7 was successfully created." }
        format.json { render :show, status: :created, location: @temp7 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp7s/1 or /temp7s/1.json
  def update
    respond_to do |format|
      if @temp7.update(temp7_params)
        format.html { redirect_to @temp7, notice: "Temp7 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp7 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp7s/1 or /temp7s/1.json
  def destroy
    @temp7.destroy
    respond_to do |format|
      format.html { redirect_to temp7s_url, notice: "Temp7 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp7
      @temp7 = Temp7.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp7_params
      params.require(:temp7).permit(:partida_id, :partida, :clave, :descripcion, :presentacion, :estado_id)
    end
end
