class CatCabmsController < ApplicationController
  before_action :set_cat_cabm, only: %i[ show edit update destroy ]

  # GET /cat_cabms or /cat_cabms.json
  def index
    @cat_cabms = CatCabm.all
  end

  # GET /cat_cabms/1 or /cat_cabms/1.json
  def show
  end

  # GET /cat_cabms/new
  def new
    @cat_cabm = CatCabm.new
  end

  # GET /cat_cabms/1/edit
  def edit
  end

  # POST /cat_cabms or /cat_cabms.json
  def create
    @cat_cabm = CatCabm.new(cat_cabm_params)

    respond_to do |format|
      if @cat_cabm.save
        format.html { redirect_to @cat_cabm, notice: "Cat cabm was successfully created." }
        format.json { render :show, status: :created, location: @cat_cabm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cat_cabm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_cabms/1 or /cat_cabms/1.json
  def update
    respond_to do |format|
      if @cat_cabm.update(cat_cabm_params)
        format.html { redirect_to @cat_cabm, notice: "Cat cabm was successfully updated." }
        format.json { render :show, status: :ok, location: @cat_cabm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cat_cabm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_cabms/1 or /cat_cabms/1.json
  def destroy
    @cat_cabm.destroy
    respond_to do |format|
      format.html { redirect_to cat_cabms_url, notice: "Cat cabm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_cabm
      @cat_cabm = CatCabm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_cabm_params
      params.require(:cat_cabm).permit(:nivel, :partida, :descripcion)
    end
end
