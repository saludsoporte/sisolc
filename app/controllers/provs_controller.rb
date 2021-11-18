class ProvsController < ApplicationController
  before_action :set_prov, only: %i[ show edit update destroy ]

  # GET /provs or /provs.json
  def index
    @provs = Prov.all
  end

  # GET /provs/1 or /provs/1.json
  def show
  end

  # GET /provs/new
  def new
    @prov = Prov.new
  end

  # GET /provs/1/edit
  def edit
  end

  # POST /provs or /provs.json
  def create
    @prov = Prov.new(prov_params)

    respond_to do |format|
      if @prov.save
        format.html { redirect_to @prov, notice: "Prov was successfully created." }
        format.json { render :show, status: :created, location: @prov }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provs/1 or /provs/1.json
  def update
    respond_to do |format|
      if @prov.update(prov_params)
        format.html { redirect_to @prov, notice: "Prov was successfully updated." }
        format.json { render :show, status: :ok, location: @prov }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provs/1 or /provs/1.json
  def destroy
    @prov.destroy
    respond_to do |format|
      format.html { redirect_to provs_url, notice: "Prov was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prov
      @prov = Prov.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prov_params
      params.require(:prov).permit(:nombre, :fiscal, :domicilio, :colonia, :ciudad, :telefonos, :fax, :rfc, :cp, :situacion_id, :cvealma_id)
    end
end
