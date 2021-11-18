class Temp4sController < ApplicationController
  before_action :set_temp4, only: %i[ show edit update destroy ]

  # GET /temp4s or /temp4s.json
  def index
    @temp4s = Temp4.all
  end

  # GET /temp4s/1 or /temp4s/1.json
  def show
  end

  # GET /temp4s/new
  def new
    @temp4 = Temp4.new
  end

  # GET /temp4s/1/edit
  def edit
  end

  # POST /temp4s or /temp4s.json
  def create
    @temp4 = Temp4.new(temp4_params)

    respond_to do |format|
      if @temp4.save
        format.html { redirect_to @temp4, notice: "Temp4 was successfully created." }
        format.json { render :show, status: :created, location: @temp4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp4s/1 or /temp4s/1.json
  def update
    respond_to do |format|
      if @temp4.update(temp4_params)
        format.html { redirect_to @temp4, notice: "Temp4 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp4s/1 or /temp4s/1.json
  def destroy
    @temp4.destroy
    respond_to do |format|
      format.html { redirect_to temp4s_url, notice: "Temp4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp4
      @temp4 = Temp4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp4_params
      params.require(:temp4).permit(:ped_id, :clave_id, :descripcion, :presentacion, :marca_mod, :cantidad, :precio, :iva, :caducidad, :importe, :total, :recibido, :cancelado, :estado_id, :requisicion_id, :renglon_id)
    end
end
