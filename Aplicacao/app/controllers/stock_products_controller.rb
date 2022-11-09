class StockProductsController < ApplicationController
  before_action :set_stock_product, only: %i[ show edit update destroy ]

  # GET /stock_products or /stock_products.json
  def index
    @stock_products = StockProduct.all
  end

  # GET /stock_products/1 or /stock_products/1.json
  def show
  end

  # GET /stock_products/new
  def new
    @stock_product = StockProduct.new
  end

  # GET /stock_products/1/edit
  def edit
  end

  # POST /stock_products or /stock_products.json
  def create
    @stock_product = StockProduct.new(stock_product_params)

    respond_to do |format|
      if @stock_product.save
        format.html { redirect_to stock_product_url(@stock_product), notice: "Stock product was successfully created." }
        format.json { render :show, status: :created, location: @stock_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stock_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_products/1 or /stock_products/1.json
  def update
    respond_to do |format|
      if @stock_product.update(stock_product_params)
        format.html { redirect_to stock_product_url(@stock_product), notice: "Stock product was successfully updated." }
        format.json { render :show, status: :ok, location: @stock_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stock_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_products/1 or /stock_products/1.json
  def destroy
    @stock_product.destroy

    respond_to do |format|
      format.html { redirect_to stock_products_url, notice: "Stock product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_product
      @stock_product = StockProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_product_params
      params.require(:stock_product).permit(:product_id, :batch, :fabrication, :validity, :quantity, :invoice_id)
    end
end
