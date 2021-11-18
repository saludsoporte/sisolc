class PacienteIdsController < ApplicationController
  before_action :set_paciente_id, only: %i[ show edit update destroy ]

  # GET /paciente_ids or /paciente_ids.json
  def index
    @paciente_ids = PacienteId.all
  end

  # GET /paciente_ids/1 or /paciente_ids/1.json
  def show
  end

  # GET /paciente_ids/new
  def new
    @paciente_id = PacienteId.new
  end

  # GET /paciente_ids/1/edit
  def edit
  end

  # POST /paciente_ids or /paciente_ids.json
  def create
    @paciente_id = PacienteId.new(paciente_id_params)

    respond_to do |format|
      if @paciente_id.save
        format.html { redirect_to @paciente_id, notice: "Paciente was successfully created." }
        format.json { render :show, status: :created, location: @paciente_id }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paciente_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paciente_ids/1 or /paciente_ids/1.json
  def update
    respond_to do |format|
      if @paciente_id.update(paciente_id_params)
        format.html { redirect_to @paciente_id, notice: "Paciente was successfully updated." }
        format.json { render :show, status: :ok, location: @paciente_id }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paciente_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_ids/1 or /paciente_ids/1.json
  def destroy
    @paciente_id.destroy
    respond_to do |format|
      format.html { redirect_to paciente_ids_url, notice: "Paciente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_id
      @paciente_id = PacienteId.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paciente_id_params
      params.require(:paciente_id).permit(:institu_id, :afiliacion)
    end
end
