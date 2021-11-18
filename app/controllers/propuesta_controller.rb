class PropuestaController < ApplicationController
  before_action :set_propuestum, only: %i[ show edit update destroy ]

  # GET /propuesta or /propuesta.json
  def index
    @propuesta = Propuestum.all
  end

  # GET /propuesta/1 or /propuesta/1.json
  def show
  end

  # GET /propuesta/new
  def new
    @propuestum = Propuestum.new
  end

  # GET /propuesta/1/edit
  def edit
  end

  # POST /propuesta or /propuesta.json
  def create
    @propuestum = Propuestum.new(propuestum_params)

    respond_to do |format|
      if @propuestum.save
        format.html { redirect_to @propuestum, notice: "Propuestum was successfully created." }
        format.json { render :show, status: :created, location: @propuestum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @propuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propuesta/1 or /propuesta/1.json
  def update
    respond_to do |format|
      if @propuestum.update(propuestum_params)
        format.html { redirect_to @propuestum, notice: "Propuestum was successfully updated." }
        format.json { render :show, status: :ok, location: @propuestum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @propuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propuesta/1 or /propuesta/1.json
  def destroy
    @propuestum.destroy
    respond_to do |format|
      format.html { redirect_to propuesta_url, notice: "Propuestum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propuestum
      @propuestum = Propuestum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def propuestum_params
      params.require(:propuestum).permit(:proceso_id, :anexo, :reng_id, :partida_id, :catalogo_id, :provee_id, :cantidad, :precio, :iva)
    end
end
