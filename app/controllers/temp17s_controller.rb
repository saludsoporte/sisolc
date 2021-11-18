class Temp17sController < ApplicationController
  before_action :set_temp17, only: %i[ show edit update destroy ]

  # GET /temp17s or /temp17s.json
  def index
    @temp17s = Temp17.all
  end

  # GET /temp17s/1 or /temp17s/1.json
  def show
  end

  # GET /temp17s/new
  def new
    @temp17 = Temp17.new
  end

  # GET /temp17s/1/edit
  def edit
  end

  # POST /temp17s or /temp17s.json
  def create
    @temp17 = Temp17.new(temp17_params)

    respond_to do |format|
      if @temp17.save
        format.html { redirect_to @temp17, notice: "Temp17 was successfully created." }
        format.json { render :show, status: :created, location: @temp17 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temp17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp17s/1 or /temp17s/1.json
  def update
    respond_to do |format|
      if @temp17.update(temp17_params)
        format.html { redirect_to @temp17, notice: "Temp17 was successfully updated." }
        format.json { render :show, status: :ok, location: @temp17 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temp17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp17s/1 or /temp17s/1.json
  def destroy
    @temp17.destroy
    respond_to do |format|
      format.html { redirect_to temp17s_url, notice: "Temp17 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp17
      @temp17 = Temp17.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temp17_params
      params.require(:temp17).permit(:ped_id, :catalogo_id, :nuevoped)
    end
end
