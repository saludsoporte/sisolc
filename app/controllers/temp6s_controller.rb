class Temp6sController < ApplicationController
  before_action :set_temp6, only: %i[ show edit update destroy ]

  # GET /temp6s or /temp6s.json
  def index
    @temp6s = Temp6.all
  end

  # GET /temp6s/1 or /temp6s/1.json
  def show
  end

  # GET /temp6s/new
  def new
    @temp6 = Temp6.new
  end

  # GET /temp6s/1/edit
  def edit
  end

  # POST /temp6s or /temp6s.json
  def create
    @temp6 = Temp6.new(temp6_params)

    respond_to do |format|
      if @temp6.save
        format.html { redirect_to @temp6, notice: "Temp6 was successfully created." }
        format.json { render :show, status: :created, location: @temp6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp6s/1 or /temp6s/1.json
  def update
    respond_to do |format|
      if @temp6.update(temp6_params)
        format.html { redirect_to @temp6, notice: "Temp6 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp6s/1 or /temp6s/1.json
  def destroy
    @temp6.destroy
    respond_to do |format|
      format.html { redirect_to temp6s_url, notice: "Temp6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp6
      @temp6 = Temp6.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp6_params
      params.require(:temp6).permit(:cvealma_id, :nombre, :fiscal, :domicilio, :colonia, :ciudad, :telefonos, :fax, :rfc, :cp)
    end
end
