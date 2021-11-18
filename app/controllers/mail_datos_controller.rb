class MailDatosController < ApplicationController
  before_action :set_mail_dato, only: %i[ show edit update destroy ]

  # GET /mail_datos or /mail_datos.json
  def index
    @mail_datos = MailDato.all
  end

  # GET /mail_datos/1 or /mail_datos/1.json
  def show
  end

  # GET /mail_datos/new
  def new
    @mail_dato = MailDato.new
  end

  # GET /mail_datos/1/edit
  def edit
  end

  # POST /mail_datos or /mail_datos.json
  def create
    @mail_dato = MailDato.new(mail_dato_params)

    respond_to do |format|
      if @mail_dato.save
        format.html { redirect_to @mail_dato, notice: "Mail dato was successfully created." }
        format.json { render :show, status: :created, location: @mail_dato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mail_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_datos/1 or /mail_datos/1.json
  def update
    respond_to do |format|
      if @mail_dato.update(mail_dato_params)
        format.html { redirect_to @mail_dato, notice: "Mail dato was successfully updated." }
        format.json { render :show, status: :ok, location: @mail_dato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mail_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_datos/1 or /mail_datos/1.json
  def destroy
    @mail_dato.destroy
    respond_to do |format|
      format.html { redirect_to mail_datos_url, notice: "Mail dato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_dato
      @mail_dato = MailDato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mail_dato_params
      params.require(:mail_dato).permit(:id_usu, :nombre, :id_sol, :id_nota, :comentario, :creada, :actualizada, :email, :estado, :dias, :fase, :fecha)
    end
end
