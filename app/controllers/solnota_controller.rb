class SolnotaController < ApplicationController
  before_action :set_solnotum, only: %i[ show edit update destroy ]

  # GET /solnota or /solnota.json
  def index
    @solnota = Solnotum.all
  end

  # GET /solnota/1 or /solnota/1.json
  def show
  end

  # GET /solnota/new
  def new
    @solnotum = Solnotum.new
  end

  # GET /solnota/1/edit
  def edit
  end

  # POST /solnota or /solnota.json
  def create
    @solnotum = Solnotum.new(solnotum_params)

    respond_to do |format|
      if @solnotum.save
        format.html { redirect_to @solnotum, notice: "Solnotum was successfully created." }
        format.json { render :show, status: :created, location: @solnotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @solnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solnota/1 or /solnota/1.json
  def update
    respond_to do |format|
      if @solnotum.update(solnotum_params)
        format.html { redirect_to @solnotum, notice: "Solnotum was successfully updated." }
        format.json { render :show, status: :ok, location: @solnotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @solnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solnota/1 or /solnota/1.json
  def destroy
    @solnotum.destroy
    respond_to do |format|
      format.html { redirect_to solnota_url, notice: "Solnotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solnotum
      @solnotum = Solnotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solnotum_params
      params.require(:solnotum).permit(:solicitud_id, :user_id, :fecha, :comenta)
    end
end
