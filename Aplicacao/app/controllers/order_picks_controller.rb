class OrderPicksController < ApplicationController
  before_action :set_order_pick, only: %i[ show edit update destroy ]

  # GET /order_picks or /order_picks.json
  def index
    @order_picks = OrderPick.all
  end

  # GET /order_picks/1 or /order_picks/1.json
  def show
  end

  # GET /order_picks/new
  def new
    @order_pick = OrderPick.new
  end

  # GET /order_picks/1/edit
  def edit
  end

  # POST /order_picks or /order_picks.json
  def create
    @order_pick = OrderPick.new(order_pick_params)

    respond_to do |format|
      if @order_pick.save
        format.html { redirect_to order_pick_url(@order_pick), notice: "Order pick was successfully created." }
        format.json { render :show, status: :created, location: @order_pick }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_picks/1 or /order_picks/1.json
  def update
    respond_to do |format|
      if @order_pick.update(order_pick_params)
        format.html { redirect_to order_pick_url(@order_pick), notice: "Order pick was successfully updated." }
        format.json { render :show, status: :ok, location: @order_pick }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_picks/1 or /order_picks/1.json
  def destroy
    @order_pick.destroy

    respond_to do |format|
      format.html { redirect_to order_picks_url, notice: "Order pick was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_pick
      @order_pick = OrderPick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_pick_params
      params.require(:order_pick).permit(:position_id, :quantity, :user_id)
    end
end
