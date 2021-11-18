class ReqnotaController < ApplicationController
  before_action :set_reqnotum, only: %i[ show edit update destroy ]

  # GET /reqnota or /reqnota.json
  def index
    @reqnota = Reqnotum.all
  end

  # GET /reqnota/1 or /reqnota/1.json
  def show
  end

  # GET /reqnota/new
  def new
    @reqnotum = Reqnotum.new
  end

  # GET /reqnota/1/edit
  def edit
  end

  # POST /reqnota or /reqnota.json
  def create
    @reqnotum = Reqnotum.new(reqnotum_params)

    respond_to do |format|
      if @reqnotum.save
        format.html { redirect_to @reqnotum, notice: "Reqnotum was successfully created." }
        format.json { render :show, status: :created, location: @reqnotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reqnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqnota/1 or /reqnota/1.json
  def update
    respond_to do |format|
      if @reqnotum.update(reqnotum_params)
        format.html { redirect_to @reqnotum, notice: "Reqnotum was successfully updated." }
        format.json { render :show, status: :ok, location: @reqnotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reqnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqnota/1 or /reqnota/1.json
  def destroy
    @reqnotum.destroy
    respond_to do |format|
      format.html { redirect_to reqnota_url, notice: "Reqnotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqnotum
      @reqnotum = Reqnotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reqnotum_params
      params.require(:reqnotum).permit(:requisicion_id, :user_id, :fecha, :comenta)
    end
end
