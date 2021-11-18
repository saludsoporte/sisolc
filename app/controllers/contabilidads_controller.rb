class ContabilidadsController < ApplicationController
  before_action :set_contabilidad, only: %i[ show edit update destroy ]

  # GET /contabilidads or /contabilidads.json
  def index
    @contabilidads = Contabilidad.all
  end

  # GET /contabilidads/1 or /contabilidads/1.json
  def show
  end

  # GET /contabilidads/new
  def new
    @contabilidad = Contabilidad.new
  end

  # GET /contabilidads/1/edit
  def edit
  end

  # POST /contabilidads or /contabilidads.json
  def create
    @contabilidad = Contabilidad.new(contabilidad_params)

    respond_to do |format|
      if @contabilidad.save
        format.html { redirect_to @contabilidad, notice: "Contabilidad was successfully created." }
        format.json { render :show, status: :created, location: @contabilidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contabilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contabilidads/1 or /contabilidads/1.json
  def update
    respond_to do |format|
      if @contabilidad.update(contabilidad_params)
        format.html { redirect_to @contabilidad, notice: "Contabilidad was successfully updated." }
        format.json { render :show, status: :ok, location: @contabilidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contabilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contabilidads/1 or /contabilidads/1.json
  def destroy
    @contabilidad.destroy
    respond_to do |format|
      format.html { redirect_to contabilidads_url, notice: "Contabilidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contabilidad
      @contabilidad = Contabilidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contabilidad_params
      params.require(:contabilidad).permit(:cuenta, :sistema_id, :fuente_id, :partida_id, :almacen_id, :prov_id, :tipo_id, :user_id, :programa_id, :proyecto_id)
    end
end
