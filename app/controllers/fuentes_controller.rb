class FuentesController < ApplicationController
  before_action :set_fuente, only: %i[ show edit update destroy ]

  # GET /fuentes or /fuentes.json
  def index
    @fuentes = Fuente.all
  end

  # GET /fuentes/1 or /fuentes/1.json
  def show
  end

  # GET /fuentes/new
  def new
    @fuente = Fuente.new
  end

  # GET /fuentes/1/edit
  def edit
  end

  # POST /fuentes or /fuentes.json
  def create
    @fuente = Fuente.new(fuente_params)

    respond_to do |format|
      if @fuente.save
        format.html { redirect_to @fuente, notice: "Fuente was successfully created." }
        format.json { render :show, status: :created, location: @fuente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fuente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuentes/1 or /fuentes/1.json
  def update
    respond_to do |format|
      if @fuente.update(fuente_params)
        format.html { redirect_to @fuente, notice: "Fuente was successfully updated." }
        format.json { render :show, status: :ok, location: @fuente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fuente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuentes/1 or /fuentes/1.json
  def destroy
    @fuente.destroy
    respond_to do |format|
      format.html { redirect_to fuentes_url, notice: "Fuente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuente
      @fuente = Fuente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fuente_params
      params.require(:fuente).permit(:periodo, :clave, :fuente, :cuenta)
    end
end
