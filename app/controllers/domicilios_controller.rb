class DomiciliosController < ApplicationController
  before_action :set_domicilio, only: %i[ show edit update destroy ]

  # GET /domicilios or /domicilios.json
  def index
    @domicilios = Domicilio.all
  end

  # GET /domicilios/1 or /domicilios/1.json
  def show
  end

  # GET /domicilios/new
  def new
    @domicilio = Domicilio.new
  end

  # GET /domicilios/1/edit
  def edit
  end

  # POST /domicilios or /domicilios.json
  def create
    @domicilio = Domicilio.new(domicilio_params)

    respond_to do |format|
      if @domicilio.save
        format.html { redirect_to @domicilio, notice: "Domicilio was successfully created." }
        format.json { render :show, status: :created, location: @domicilio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @domicilio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /domicilios/1 or /domicilios/1.json
  def update
    respond_to do |format|
      if @domicilio.update(domicilio_params)
        format.html { redirect_to @domicilio, notice: "Domicilio was successfully updated." }
        format.json { render :show, status: :ok, location: @domicilio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @domicilio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domicilios/1 or /domicilios/1.json
  def destroy
    @domicilio.destroy
    respond_to do |format|
      format.html { redirect_to domicilios_url, notice: "Domicilio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_domicilio
      @domicilio = Domicilio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def domicilio_params
      params.require(:domicilio).permit(:paciente_id, :entidad_id, :municipio, :calle, :numero, :colonia, :cp, :telefono, :observa, :user_id, :muni_id)
    end
end
