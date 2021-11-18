class Temp2sController < ApplicationController
  before_action :set_temp2, only: %i[ show edit update destroy ]

  # GET /temp2s or /temp2s.json
  def index
    @temp2s = Temp2.all
  end

  # GET /temp2s/1 or /temp2s/1.json
  def show
  end

  # GET /temp2s/new
  def new
    @temp2 = Temp2.new
  end

  # GET /temp2s/1/edit
  def edit
  end

  # POST /temp2s or /temp2s.json
  def create
    @temp2 = Temp2.new(temp2_params)

    respond_to do |format|
      if @temp2.save
        format.html { redirect_to @temp2, notice: "Temp2 was successfully created." }
        format.json { render :show, status: :created, location: @temp2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp2s/1 or /temp2s/1.json
  def update
    respond_to do |format|
      if @temp2.update(temp2_params)
        format.html { redirect_to @temp2, notice: "Temp2 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp2s/1 or /temp2s/1.json
  def destroy
    @temp2.destroy
    respond_to do |format|
      format.html { redirect_to temp2s_url, notice: "Temp2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp2
      @temp2 = Temp2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp2_params
      params.require(:temp2).permit(:uniresp, :programa, :subprograma, :descripcion, :ff, :obra, :partest, :cvejur, :cveunidad, :unidad, :cveprog, :progabrev, :nom_prog, :cvesubprog, :nomsubprog, :cveaccion, :nomaccion, :rubro, :partida, :cveart, :sinonimo, :articulo, :presentacion, :fuente, :cantidad, :costo, :observaciones, :nup)
    end
end
