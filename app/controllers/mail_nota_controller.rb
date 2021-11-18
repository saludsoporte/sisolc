class MailNotaController < ApplicationController
  before_action :set_mail_notum, only: %i[ show edit update destroy ]

  # GET /mail_nota or /mail_nota.json
  def index
    @mail_nota = MailNotum.all
  end

  # GET /mail_nota/1 or /mail_nota/1.json
  def show
  end

  # GET /mail_nota/new
  def new
    @mail_notum = MailNotum.new
  end

  # GET /mail_nota/1/edit
  def edit
  end

  # POST /mail_nota or /mail_nota.json
  def create
    @mail_notum = MailNotum.new(mail_notum_params)

    respond_to do |format|
      if @mail_notum.save
        format.html { redirect_to @mail_notum, notice: "Mail notum was successfully created." }
        format.json { render :show, status: :created, location: @mail_notum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mail_notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_nota/1 or /mail_nota/1.json
  def update
    respond_to do |format|
      if @mail_notum.update(mail_notum_params)
        format.html { redirect_to @mail_notum, notice: "Mail notum was successfully updated." }
        format.json { render :show, status: :ok, location: @mail_notum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mail_notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_nota/1 or /mail_nota/1.json
  def destroy
    @mail_notum.destroy
    respond_to do |format|
      format.html { redirect_to mail_nota_url, notice: "Mail notum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_notum
      @mail_notum = MailNotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mail_notum_params
      params.require(:mail_notum).permit(:nombre, :correo, :fecha, :id_nota, :fase)
    end
end
