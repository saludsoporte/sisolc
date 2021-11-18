class AfiliacionsController < ApplicationController
  before_action :set_afiliacion, only: %i[ show edit update destroy ]

  # GET /afiliacions or /afiliacions.json
  def index
    @afiliacions = Afiliacion.all
  end

  # GET /afiliacions/1 or /afiliacions/1.json
  def show
  end

  # GET /afiliacions/new
  def new
    @afiliacion = Afiliacion.new
  end

  # GET /afiliacions/1/edit
  def edit
  end

  # POST /afiliacions or /afiliacions.json
  def create
    @afiliacion = Afiliacion.new(afiliacion_params)

    respond_to do |format|
      if @afiliacion.save
        format.html { redirect_to @afiliacion, notice: "Afiliacion was successfully created." }
        format.json { render :show, status: :created, location: @afiliacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @afiliacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /afiliacions/1 or /afiliacions/1.json
  def update
    respond_to do |format|
      if @afiliacion.update(afiliacion_params)
        format.html { redirect_to @afiliacion, notice: "Afiliacion was successfully updated." }
        format.json { render :show, status: :ok, location: @afiliacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @afiliacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afiliacions/1 or /afiliacions/1.json
  def destroy
    @afiliacion.destroy
    respond_to do |format|
      format.html { redirect_to afiliacions_url, notice: "Afiliacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afiliacion
      @afiliacion = Afiliacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def afiliacion_params
      params.require(:afiliacion).permit(:paciente_id, :institu_id, :institucion, :afiliacion, :user_id)
    end
end
