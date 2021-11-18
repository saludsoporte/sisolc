class EvolucionsController < ApplicationController
  before_action :set_evolucion, only: %i[ show edit update destroy ]

  # GET /evolucions or /evolucions.json
  def index
    @evolucions = Evolucion.all
  end

  # GET /evolucions/1 or /evolucions/1.json
  def show
  end

  # GET /evolucions/new
  def new
    @evolucion = Evolucion.new
  end

  # GET /evolucions/1/edit
  def edit
  end

  # POST /evolucions or /evolucions.json
  def create
    @evolucion = Evolucion.new(evolucion_params)

    respond_to do |format|
      if @evolucion.save
        format.html { redirect_to @evolucion, notice: "Evolucion was successfully created." }
        format.json { render :show, status: :created, location: @evolucion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evolucions/1 or /evolucions/1.json
  def update
    respond_to do |format|
      if @evolucion.update(evolucion_params)
        format.html { redirect_to @evolucion, notice: "Evolucion was successfully updated." }
        format.json { render :show, status: :ok, location: @evolucion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evolucions/1 or /evolucions/1.json
  def destroy
    @evolucion.destroy
    respond_to do |format|
      format.html { redirect_to evolucions_url, notice: "Evolucion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evolucion
      @evolucion = Evolucion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evolucion_params
      params.require(:evolucion).permit(:paciente_id, :atencion_id, :fecha, :diagnosticos, :ta, :fr, :fc, :temp, :condiciones, :pendientes, :pronostico, :user_id, :tipo_id, :fechaeg)
    end
end
