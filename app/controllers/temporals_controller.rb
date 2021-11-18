class TemporalsController < ApplicationController
  before_action :set_temporal, only: %i[ show edit update destroy ]

  # GET /temporals or /temporals.json
  def index
    @temporals = Temporal.all
  end

  # GET /temporals/1 or /temporals/1.json
  def show
  end

  # GET /temporals/new
  def new
    @temporal = Temporal.new
  end

  # GET /temporals/1/edit
  def edit
  end

  # POST /temporals or /temporals.json
  def create
    @temporal = Temporal.new(temporal_params)

    respond_to do |format|
      if @temporal.save
        format.html { redirect_to @temporal, notice: "Temporal was successfully created." }
        format.json { render :show, status: :created, location: @temporal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temporals/1 or /temporals/1.json
  def update
    respond_to do |format|
      if @temporal.update(temporal_params)
        format.html { redirect_to @temporal, notice: "Temporal was successfully updated." }
        format.json { render :show, status: :ok, location: @temporal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporals/1 or /temporals/1.json
  def destroy
    @temporal.destroy
    respond_to do |format|
      format.html { redirect_to temporals_url, notice: "Temporal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temporal
      @temporal = Temporal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temporal_params
      params.require(:temporal).permit(:c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :c11, :c12, :c13, :c14, :c15, :c16, :c17, :c18, :c19, :c20, :c21, :c22, :c23, :c24, :c25, :c26, :c27, :c28, :c29, :c30, :c31, :c32, :c33, :c34, :c35, :c36, :c37, :c38, :c39, :c40)
    end
end
