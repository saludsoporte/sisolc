class Temp20sController < ApplicationController
  before_action :set_temp20, only: %i[ show edit update destroy ]

  # GET /temp20s or /temp20s.json
  def index
    @temp20s = Temp20.all
  end

  # GET /temp20s/1 or /temp20s/1.json
  def show
  end

  # GET /temp20s/new
  def new
    @temp20 = Temp20.new
  end

  # GET /temp20s/1/edit
  def edit
  end

  # POST /temp20s or /temp20s.json
  def create
    @temp20 = Temp20.new(temp20_params)

    respond_to do |format|
      if @temp20.save
        format.html { redirect_to @temp20, notice: "Temp20 was successfully created." }
        format.json { render :show, status: :created, location: @temp20 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp20s/1 or /temp20s/1.json
  def update
    respond_to do |format|
      if @temp20.update(temp20_params)
        format.html { redirect_to @temp20, notice: "Temp20 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp20 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp20s/1 or /temp20s/1.json
  def destroy
    @temp20.destroy
    respond_to do |format|
      format.html { redirect_to temp20s_url, notice: "Temp20 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp20
      @temp20 = Temp20.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp20_params
      params.require(:temp20).permit(:id, :fecha, :clues_id, :fuente_id, :user_id, :autoriza_id, :estado_id, :anexos, :etiqueta, :importe, :vobo_id)
    end
end
