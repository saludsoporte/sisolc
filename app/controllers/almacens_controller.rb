class AlmacensController < ApplicationController
  before_action :set_almacen, only: %i[ show edit update destroy ]

  # GET /almacens or /almacens.json
  def index
    @almacens = Almacen.all
  end

  # GET /almacens/1 or /almacens/1.json
  def show
  end

  # GET /almacens/new
  def new
    @almacen = Almacen.new
  end

  # GET /almacens/1/edit
  def edit
  end

  # POST /almacens or /almacens.json
  def create
    @almacen = Almacen.new(almacen_params)

    respond_to do |format|
      if @almacen.save
        format.html { redirect_to @almacen, notice: "Almacen was successfully created." }
        format.json { render :show, status: :created, location: @almacen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @almacen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /almacens/1 or /almacens/1.json
  def update
    respond_to do |format|
      if @almacen.update(almacen_params)
        format.html { redirect_to @almacen, notice: "Almacen was successfully updated." }
        format.json { render :show, status: :ok, location: @almacen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @almacen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /almacens/1 or /almacens/1.json
  def destroy
    @almacen.destroy
    respond_to do |format|
      format.html { redirect_to almacens_url, notice: "Almacen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_almacen
      @almacen = Almacen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def almacen_params
      params.require(:almacen).permit(:clue_id, :user_id, :nombre, :tipo, :cuenta1, :cuenta2, :tipo_id, :conta1_id, :conta2_id, :almac1_id, :almac2_id, :almac3_id, :depende_id, :almac4_id, :almac5_id, :almac6_id, :almac7_id, :domicilio, :municipio, :cp, :cpostal, :jefeu, :admoru, :cierre1, :cierre2)
    end
end
