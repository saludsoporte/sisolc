class Temp12sController < ApplicationController
  before_action :set_temp12, only: %i[ show edit update destroy ]

  # GET /temp12s or /temp12s.json
  def index
    @temp12s = Temp12.all
  end

  # GET /temp12s/1 or /temp12s/1.json
  def show
  end

  # GET /temp12s/new
  def new
    @temp12 = Temp12.new
  end

  # GET /temp12s/1/edit
  def edit
  end

  # POST /temp12s or /temp12s.json
  def create
    @temp12 = Temp12.new(temp12_params)

    respond_to do |format|
      if @temp12.save
        format.html { redirect_to @temp12, notice: "Temp12 was successfully created." }
        format.json { render :show, status: :created, location: @temp12 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp12s/1 or /temp12s/1.json
  def update
    respond_to do |format|
      if @temp12.update(temp12_params)
        format.html { redirect_to @temp12, notice: "Temp12 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp12 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp12s/1 or /temp12s/1.json
  def destroy
    @temp12.destroy
    respond_to do |format|
      format.html { redirect_to temp12s_url, notice: "Temp12 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp12
      @temp12 = Temp12.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp12_params
      params.require(:temp12).permit(:almacen_id, :catalogo_id, :total)
    end
end
