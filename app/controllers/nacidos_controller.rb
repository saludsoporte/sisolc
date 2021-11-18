class NacidosController < ApplicationController
  before_action :set_nacido, only: %i[ show edit update destroy ]

  # GET /nacidos or /nacidos.json
  def index
    @nacidos = Nacido.all
  end

  # GET /nacidos/1 or /nacidos/1.json
  def show
  end

  # GET /nacidos/new
  def new
    @nacido = Nacido.new
  end

  # GET /nacidos/1/edit
  def edit
  end

  # POST /nacidos or /nacidos.json
  def create
    @nacido = Nacido.new(nacido_params)

    respond_to do |format|
      if @nacido.save
        format.html { redirect_to @nacido, notice: "Nacido was successfully created." }
        format.json { render :show, status: :created, location: @nacido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nacido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nacidos/1 or /nacidos/1.json
  def update
    respond_to do |format|
      if @nacido.update(nacido_params)
        format.html { redirect_to @nacido, notice: "Nacido was successfully updated." }
        format.json { render :show, status: :ok, location: @nacido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nacido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nacidos/1 or /nacidos/1.json
  def destroy
    @nacido.destroy
    respond_to do |format|
      format.html { redirect_to nacidos_url, notice: "Nacido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nacido
      @nacido = Nacido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nacido_params
      params.require(:nacido).permit(:paciente_id, :atencion_id, :evolucion, :atencion, :egreso, :defuncion, :user_id)
    end
end
