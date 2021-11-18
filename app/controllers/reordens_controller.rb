class ReordensController < ApplicationController
  before_action :set_reorden, only: %i[ show edit update destroy ]

  # GET /reordens or /reordens.json
  def index
    @reordens = Reorden.all
  end

  # GET /reordens/1 or /reordens/1.json
  def show
  end

  # GET /reordens/new
  def new
    @reorden = Reorden.new
  end

  # GET /reordens/1/edit
  def edit
  end

  # POST /reordens or /reordens.json
  def create
    @reorden = Reorden.new(reorden_params)

    respond_to do |format|
      if @reorden.save
        format.html { redirect_to @reorden, notice: "Reorden was successfully created." }
        format.json { render :show, status: :created, location: @reorden }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reorden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reordens/1 or /reordens/1.json
  def update
    respond_to do |format|
      if @reorden.update(reorden_params)
        format.html { redirect_to @reorden, notice: "Reorden was successfully updated." }
        format.json { render :show, status: :ok, location: @reorden }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reorden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reordens/1 or /reordens/1.json
  def destroy
    @reorden.destroy
    respond_to do |format|
      format.html { redirect_to reordens_url, notice: "Reorden was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reorden
      @reorden = Reorden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reorden_params
      params.require(:reorden).permit(:nombre, :partida_id, :catalogo_id, :punto, :tipo_id, :almacen_id, :user_id, :notifica_id, :vigenciai, :vigenciaf, :estado_id, :existencia)
    end
end
