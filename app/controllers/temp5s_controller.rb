class Temp5sController < ApplicationController
  before_action :set_temp5, only: %i[ show edit update destroy ]

  # GET /temp5s or /temp5s.json
  def index
    @temp5s = Temp5.all
  end

  # GET /temp5s/1 or /temp5s/1.json
  def show
  end

  # GET /temp5s/new
  def new
    @temp5 = Temp5.new
  end

  # GET /temp5s/1/edit
  def edit
  end

  # POST /temp5s or /temp5s.json
  def create
    @temp5 = Temp5.new(temp5_params)

    respond_to do |format|
      if @temp5.save
        format.html { redirect_to @temp5, notice: "Temp5 was successfully created." }
        format.json { render :show, status: :created, location: @temp5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp5s/1 or /temp5s/1.json
  def update
    respond_to do |format|
      if @temp5.update(temp5_params)
        format.html { redirect_to @temp5, notice: "Temp5 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp5s/1 or /temp5s/1.json
  def destroy
    @temp5.destroy
    respond_to do |format|
      format.html { redirect_to temp5s_url, notice: "Temp5 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp5
      @temp5 = Temp5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp5_params
      params.require(:temp5).permit(:id, :fecha, :clues_id, :fuente_id, :user_id, :autoriza_id, :estado_id, :anexos, :etiqueta, :importe, :vobo_id)
    end
end
