class SubprosController < ApplicationController
  before_action :set_subpro, only: %i[ show edit update destroy ]

  # GET /subpros or /subpros.json
  def index
    @subpros = Subpro.all
  end

  # GET /subpros/1 or /subpros/1.json
  def show
  end

  # GET /subpros/new
  def new
    @subpro = Subpro.new
  end

  # GET /subpros/1/edit
  def edit
  end

  # POST /subpros or /subpros.json
  def create
    @subpro = Subpro.new(subpro_params)

    respond_to do |format|
      if @subpro.save
        format.html { redirect_to @subpro, notice: "Subpro was successfully created." }
        format.json { render :show, status: :created, location: @subpro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subpros/1 or /subpros/1.json
  def update
    respond_to do |format|
      if @subpro.update(subpro_params)
        format.html { redirect_to @subpro, notice: "Subpro was successfully updated." }
        format.json { render :show, status: :ok, location: @subpro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subpros/1 or /subpros/1.json
  def destroy
    @subpro.destroy
    respond_to do |format|
      format.html { redirect_to subpros_url, notice: "Subpro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subpro
      @subpro = Subpro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subpro_params
      params.require(:subpro).permit(:programa_id, :clave, :programa)
    end
end
