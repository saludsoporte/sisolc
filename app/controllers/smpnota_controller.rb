class SmpnotaController < ApplicationController
  before_action :set_smpnotum, only: %i[ show edit update destroy ]

  # GET /smpnota or /smpnota.json
  def index
    @smpnota = Smpnotum.all
  end

  # GET /smpnota/1 or /smpnota/1.json
  def show
  end

  # GET /smpnota/new
  def new
    @smpnotum = Smpnotum.new
  end

  # GET /smpnota/1/edit
  def edit
  end

  # POST /smpnota or /smpnota.json
  def create
    @smpnotum = Smpnotum.new(smpnotum_params)

    respond_to do |format|
      if @smpnotum.save
        format.html { redirect_to @smpnotum, notice: "Smpnotum was successfully created." }
        format.json { render :show, status: :created, location: @smpnotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smpnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smpnota/1 or /smpnota/1.json
  def update
    respond_to do |format|
      if @smpnotum.update(smpnotum_params)
        format.html { redirect_to @smpnotum, notice: "Smpnotum was successfully updated." }
        format.json { render :show, status: :ok, location: @smpnotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smpnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smpnota/1 or /smpnota/1.json
  def destroy
    @smpnotum.destroy
    respond_to do |format|
      format.html { redirect_to smpnota_url, notice: "Smpnotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smpnotum
      @smpnotum = Smpnotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smpnotum_params
      params.require(:smpnotum).permit(:user_id, :fecha, :comenta, :fecharesp, :respuesta, :destinatario_id)
    end
end
