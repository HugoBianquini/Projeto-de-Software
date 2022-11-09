class CategoriaController < ApplicationController
  before_action :set_categorium, only: %i[ show edit update destroy ]

  # GET /categoria or /categoria.json
  def index
    @categoria = Categorium.all
  end

  # GET /categoria/1 or /categoria/1.json
  def show
  end

  # GET /categoria/new
  def new
    @categorium = Categorium.new
  end

  # GET /categoria/1/edit
  def edit
  end

  # POST /categoria or /categoria.json
  def create
    @categorium = Categorium.new(categorium_params)

    respond_to do |format|
      if @categorium.save
        format.html { redirect_to categorium_url(@categorium), notice: "Categorium was successfully created." }
        format.json { render :show, status: :created, location: @categorium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria/1 or /categoria/1.json
  def update
    respond_to do |format|
      if @categorium.update(categorium_params)
        format.html { redirect_to categorium_url(@categorium), notice: "Categorium was successfully updated." }
        format.json { render :show, status: :ok, location: @categorium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria/1 or /categoria/1.json
  def destroy
    @categorium.destroy

    respond_to do |format|
      format.html { redirect_to categoria_url, notice: "Categorium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorium
      @categorium = Categorium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categorium_params
      params.require(:categorium).permit(:descricao)
    end
end
