class EntidadsController < ApplicationController
  before_action :set_entidad, only: %i[ show edit update destroy ]

  # GET /entidads or /entidads.json
  def index
    @entidads = Entidad.all
  end

  # GET /entidads/1 or /entidads/1.json
  def show
  end

  # GET /entidads/new
  def new
    @entidad = Entidad.new
  end

  # GET /entidads/1/edit
  def edit
  end

  # POST /entidads or /entidads.json
  def create
    @entidad = Entidad.new(entidad_params)

    respond_to do |format|
      if @entidad.save
        format.html { redirect_to @entidad, notice: "Entidad was successfully created." }
        format.json { render :show, status: :created, location: @entidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entidads/1 or /entidads/1.json
  def update
    respond_to do |format|
      if @entidad.update(entidad_params)
        format.html { redirect_to @entidad, notice: "Entidad was successfully updated." }
        format.json { render :show, status: :ok, location: @entidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entidads/1 or /entidads/1.json
  def destroy
    @entidad.destroy
    respond_to do |format|
      format.html { redirect_to entidads_url, notice: "Entidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entidad
      @entidad = Entidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entidad_params
      params.require(:entidad).permit(:entidad)
    end
end
