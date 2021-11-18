class ReportesController < ApplicationController
  before_action :set_reporte, only: %i[ show edit update destroy ]

  # GET /reportes or /reportes.json
  def index
    @reportes = Reporte.all
  end

  # GET /reportes/1 or /reportes/1.json
  def show
  end

  # GET /reportes/new
  def new
    @reporte = Reporte.new
  end

  # GET /reportes/1/edit
  def edit
  end

  # POST /reportes or /reportes.json
  def create
    @reporte = Reporte.new(reporte_params)

    respond_to do |format|
      if @reporte.save
        format.html { redirect_to @reporte, notice: "Reporte was successfully created." }
        format.json { render :show, status: :created, location: @reporte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportes/1 or /reportes/1.json
  def update
    respond_to do |format|
      if @reporte.update(reporte_params)
        format.html { redirect_to @reporte, notice: "Reporte was successfully updated." }
        format.json { render :show, status: :ok, location: @reporte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportes/1 or /reportes/1.json
  def destroy
    @reporte.destroy
    respond_to do |format|
      format.html { redirect_to reportes_url, notice: "Reporte was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte
      @reporte = Reporte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_params
      params.require(:reporte).permit(:reporte, :desde, :hasta, :unidad, :cpini, :cpfin, :usuario, :texto, :rango1, :rango2, :sistema_id)
    end
end
