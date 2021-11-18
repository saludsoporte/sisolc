class Temp16sController < ApplicationController
  before_action :set_temp16, only: %i[ show edit update destroy ]

  # GET /temp16s or /temp16s.json
  def index
    @temp16s = Temp16.all
  end

  # GET /temp16s/1 or /temp16s/1.json
  def show
  end

  # GET /temp16s/new
  def new
    @temp16 = Temp16.new
  end

  # GET /temp16s/1/edit
  def edit
  end

  # POST /temp16s or /temp16s.json
  def create
    @temp16 = Temp16.new(temp16_params)

    respond_to do |format|
      if @temp16.save
        format.html { redirect_to @temp16, notice: "Temp16 was successfully created." }
        format.json { render :show, status: :created, location: @temp16 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp16s/1 or /temp16s/1.json
  def update
    respond_to do |format|
      if @temp16.update(temp16_params)
        format.html { redirect_to @temp16, notice: "Temp16 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp16 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp16s/1 or /temp16s/1.json
  def destroy
    @temp16.destroy
    respond_to do |format|
      format.html { redirect_to temp16s_url, notice: "Temp16 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp16
      @temp16 = Temp16.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp16_params
      params.require(:temp16).permit(:clues_id, :user_id, :autoriza_id, :estado_id, :vobo_id, :fecha, :fuente_id)
    end
end
