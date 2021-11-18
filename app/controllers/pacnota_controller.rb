class PacnotaController < ApplicationController
  before_action :set_pacnotum, only: %i[ show edit update destroy ]

  # GET /pacnota or /pacnota.json
  def index
    @pacnota = Pacnotum.all
  end

  # GET /pacnota/1 or /pacnota/1.json
  def show
  end

  # GET /pacnota/new
  def new
    @pacnotum = Pacnotum.new
  end

  # GET /pacnota/1/edit
  def edit
  end

  # POST /pacnota or /pacnota.json
  def create
    @pacnotum = Pacnotum.new(pacnotum_params)

    respond_to do |format|
      if @pacnotum.save
        format.html { redirect_to @pacnotum, notice: "Pacnotum was successfully created." }
        format.json { render :show, status: :created, location: @pacnotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pacnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacnota/1 or /pacnota/1.json
  def update
    respond_to do |format|
      if @pacnotum.update(pacnotum_params)
        format.html { redirect_to @pacnotum, notice: "Pacnotum was successfully updated." }
        format.json { render :show, status: :ok, location: @pacnotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pacnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacnota/1 or /pacnota/1.json
  def destroy
    @pacnotum.destroy
    respond_to do |format|
      format.html { redirect_to pacnota_url, notice: "Pacnotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacnotum
      @pacnotum = Pacnotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pacnotum_params
      params.require(:pacnotum).permit(:paciente_id, :user_id, :fecha, :comenta)
    end
end
