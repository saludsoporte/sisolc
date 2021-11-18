class CatBasicosController < ApplicationController
  before_action :set_cat_basico, only: %i[ show edit update destroy ]

  # GET /cat_basicos or /cat_basicos.json
  def index
    @cat_basicos = CatBasico.all
  end

  # GET /cat_basicos/1 or /cat_basicos/1.json
  def show
  end

  # GET /cat_basicos/new
  def new
    @cat_basico = CatBasico.new
  end

  # GET /cat_basicos/1/edit
  def edit
  end

  # POST /cat_basicos or /cat_basicos.json
  def create
    @cat_basico = CatBasico.new(cat_basico_params)

    respond_to do |format|
      if @cat_basico.save
        format.html { redirect_to @cat_basico, notice: "Cat basico was successfully created." }
        format.json { render :show, status: :created, location: @cat_basico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cat_basico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_basicos/1 or /cat_basicos/1.json
  def update
    respond_to do |format|
      if @cat_basico.update(cat_basico_params)
        format.html { redirect_to @cat_basico, notice: "Cat basico was successfully updated." }
        format.json { render :show, status: :ok, location: @cat_basico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cat_basico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_basicos/1 or /cat_basicos/1.json
  def destroy
    @cat_basico.destroy
    respond_to do |format|
      format.html { redirect_to cat_basicos_url, notice: "Cat basico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_basico
      @cat_basico = CatBasico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_basico_params
      params.require(:cat_basico).permit(:clave, :descripcion, :presentacion, :precio, :es_causes)
    end
end
