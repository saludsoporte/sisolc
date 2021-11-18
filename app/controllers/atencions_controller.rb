class AtencionsController < ApplicationController
  before_action :set_atencion, only: %i[ show edit update destroy ]

  # GET /atencions or /atencions.json
  def index
    @atencions = Atencion.all
  end

  # GET /atencions/1 or /atencions/1.json
  def show
  end

  # GET /atencions/new
  def new
    @atencion = Atencion.new
  end

  # GET /atencions/1/edit
  def edit
  end

  # POST /atencions or /atencions.json
  def create
    @atencion = Atencion.new(atencion_params)

    respond_to do |format|
      if @atencion.save
        format.html { redirect_to @atencion, notice: "Atencion was successfully created." }
        format.json { render :show, status: :created, location: @atencion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atencions/1 or /atencions/1.json
  def update
    respond_to do |format|
      if @atencion.update(atencion_params)
        format.html { redirect_to @atencion, notice: "Atencion was successfully updated." }
        format.json { render :show, status: :ok, location: @atencion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atencions/1 or /atencions/1.json
  def destroy
    @atencion.destroy
    respond_to do |format|
      format.html { redirect_to atencions_url, notice: "Atencion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atencion
      @atencion = Atencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atencion_params
      params.require(:atencion).permit(:clue_id, :unidad, :paciente_id, :fecha, :diagnosticos, :tipoat, :semanas, :gesta, :para, :aborto, :cesareas, :terminacion, :termino, :altapor, :fechaeg, :user_id, :tipo_id)
    end
end
