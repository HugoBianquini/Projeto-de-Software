class PixesController < ApplicationController
  before_action :set_pix, only: %i[ show edit update destroy ]

  # GET /pixes or /pixes.json
  def index
    @pixes = Pix.all
  end

  # GET /pixes/1 or /pixes/1.json
  def show
  end

  # GET /pixes/new
  def new
    @pix = Pix.new
  end

  # GET /pixes/1/edit
  def edit
  end

  # POST /pixes or /pixes.json
  def create
    @pix = Pix.new(pix_params)

    respond_to do |format|
      if @pix.save
        format.html { redirect_to pix_url(@pix), notice: "Pix was successfully created." }
        format.json { render :show, status: :created, location: @pix }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pixes/1 or /pixes/1.json
  def update
    respond_to do |format|
      if @pix.update(pix_params)
        format.html { redirect_to pix_url(@pix), notice: "Pix was successfully updated." }
        format.json { render :show, status: :ok, location: @pix }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pixes/1 or /pixes/1.json
  def destroy
    @pix.destroy

    respond_to do |format|
      format.html { redirect_to pixes_url, notice: "Pix was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pix
      @pix = Pix.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pix_params
      params.require(:pix).permit(:key)
    end
end
