class DetpedsController < ApplicationController
  before_action :set_detped, only: %i[ show edit update destroy ]

  # GET /detpeds or /detpeds.json
  def index
    @detpeds = Detped.all
  end

  # GET /detpeds/1 or /detpeds/1.json
  def show
  end

  # GET /detpeds/new
  def new
    @detped = Detped.new
  end

  # GET /detpeds/1/edit
  def edit
  end

  # POST /detpeds or /detpeds.json
  def create
    @detped = Detped.new(detped_params)

    respond_to do |format|
      if @detped.save
        format.html { redirect_to @detped, notice: "Detped was successfully created." }
        format.json { render :show, status: :created, location: @detped }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detped.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detpeds/1 or /detpeds/1.json
  def update
    respond_to do |format|
      if @detped.update(detped_params)
        format.html { redirect_to @detped, notice: "Detped was successfully updated." }
        format.json { render :show, status: :ok, location: @detped }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detped.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detpeds/1 or /detpeds/1.json
  def destroy
    @detped.destroy
    respond_to do |format|
      format.html { redirect_to detpeds_url, notice: "Detped was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detped
      @detped = Detped.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detped_params
      params.require(:detped).permit(:ped_id, :clave_id, :descripcion, :presentacion, :marca_mod, :cantidad, :precio, :iva, :caducidad, :importe, :total, :recibido, :cancelado, :estado_id, :requisicion_id, :renglon_id)
    end
end
