class RequisicionsController < ApplicationController
  before_action :set_requisicion, only: %i[ show edit update destroy ]

  # GET /requisicions or /requisicions.json
  def index
    @requisicions = Requisicion.all
  end

  # GET /requisicions/1 or /requisicions/1.json
  def show
  end

  # GET /requisicions/new
  def new
    @requisicion = Requisicion.new
  end

  # GET /requisicions/1/edit
  def edit
  end

  # POST /requisicions or /requisicions.json
  def create
    @requisicion = Requisicion.new(requisicion_params)

    respond_to do |format|
      if @requisicion.save
        format.html { redirect_to @requisicion, notice: "Requisicion was successfully created." }
        format.json { render :show, status: :created, location: @requisicion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requisicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisicions/1 or /requisicions/1.json
  def update
    respond_to do |format|
      if @requisicion.update(requisicion_params)
        format.html { redirect_to @requisicion, notice: "Requisicion was successfully updated." }
        format.json { render :show, status: :ok, location: @requisicion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requisicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicions/1 or /requisicions/1.json
  def destroy
    @requisicion.destroy
    respond_to do |format|
      format.html { redirect_to requisicions_url, notice: "Requisicion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisicion
      @requisicion = Requisicion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requisicion_params
      params.require(:requisicion).permit(:fecha, :clues_id, :fuente_id, :user_id, :autoriza_id, :estado_id, :anexos, :etiqueta, :importe, :vobo_id)
    end
end
