class ProcesoPedReqsController < ApplicationController
  before_action :set_proceso_ped_req, only: %i[ show edit update destroy ]

  # GET /proceso_ped_reqs or /proceso_ped_reqs.json
  def index
    @proceso_ped_reqs = ProcesoPedReq.all
  end

  # GET /proceso_ped_reqs/1 or /proceso_ped_reqs/1.json
  def show
  end

  # GET /proceso_ped_reqs/new
  def new
    @proceso_ped_req = ProcesoPedReq.new
  end

  # GET /proceso_ped_reqs/1/edit
  def edit
  end

  # POST /proceso_ped_reqs or /proceso_ped_reqs.json
  def create
    @proceso_ped_req = ProcesoPedReq.new(proceso_ped_req_params)

    respond_to do |format|
      if @proceso_ped_req.save
        format.html { redirect_to @proceso_ped_req, notice: "Proceso ped req was successfully created." }
        format.json { render :show, status: :created, location: @proceso_ped_req }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proceso_ped_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proceso_ped_reqs/1 or /proceso_ped_reqs/1.json
  def update
    respond_to do |format|
      if @proceso_ped_req.update(proceso_ped_req_params)
        format.html { redirect_to @proceso_ped_req, notice: "Proceso ped req was successfully updated." }
        format.json { render :show, status: :ok, location: @proceso_ped_req }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proceso_ped_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proceso_ped_reqs/1 or /proceso_ped_reqs/1.json
  def destroy
    @proceso_ped_req.destroy
    respond_to do |format|
      format.html { redirect_to proceso_ped_reqs_url, notice: "Proceso ped req was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceso_ped_req
      @proceso_ped_req = ProcesoPedReq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proceso_ped_req_params
      params.require(:proceso_ped_req).permit(:proceso_id, :poas_id, :req_sacp, :req_sacp_interno, :empate, :clave_id, :detpeds_id, :entrega, :fecha, :cantidad)
    end
end
