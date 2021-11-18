class VDblinkConexionsController < ApplicationController
  before_action :set_v_dblink_conexion, only: %i[ show edit update destroy ]

  # GET /v_dblink_conexions or /v_dblink_conexions.json
  def index
    @v_dblink_conexions = VDblinkConexion.all
  end

  # GET /v_dblink_conexions/1 or /v_dblink_conexions/1.json
  def show
  end

  # GET /v_dblink_conexions/new
  def new
    @v_dblink_conexion = VDblinkConexion.new
  end

  # GET /v_dblink_conexions/1/edit
  def edit
  end

  # POST /v_dblink_conexions or /v_dblink_conexions.json
  def create
    @v_dblink_conexion = VDblinkConexion.new(v_dblink_conexion_params)

    respond_to do |format|
      if @v_dblink_conexion.save
        format.html { redirect_to @v_dblink_conexion, notice: "V dblink conexion was successfully created." }
        format.json { render :show, status: :created, location: @v_dblink_conexion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @v_dblink_conexion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_dblink_conexions/1 or /v_dblink_conexions/1.json
  def update
    respond_to do |format|
      if @v_dblink_conexion.update(v_dblink_conexion_params)
        format.html { redirect_to @v_dblink_conexion, notice: "V dblink conexion was successfully updated." }
        format.json { render :show, status: :ok, location: @v_dblink_conexion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @v_dblink_conexion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_dblink_conexions/1 or /v_dblink_conexions/1.json
  def destroy
    @v_dblink_conexion.destroy
    respond_to do |format|
      format.html { redirect_to v_dblink_conexions_url, notice: "V dblink conexion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_dblink_conexion
      @v_dblink_conexion = VDblinkConexion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v_dblink_conexion_params
      params.require(:v_dblink_conexion).permit(:conexion_presup, :ejercicio)
    end
end
