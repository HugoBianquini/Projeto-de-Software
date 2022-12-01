class DebitCardsController < ApplicationController
  before_action :set_debit_card, only: %i[ show edit update destroy ]

  # GET /debit_cards or /debit_cards.json
  def index
    @debit_cards = DebitCard.all
  end

  # GET /debit_cards/1 or /debit_cards/1.json
  def show
  end

  # GET /debit_cards/new
  def new
    @debit_card = DebitCard.new
  end

  # GET /debit_cards/1/edit
  def edit
  end

  # POST /debit_cards or /debit_cards.json
  def create
    @debit_card = DebitCard.new(debit_card_params)

    respond_to do |format|
      if @debit_card.save
        format.html { redirect_to debit_card_url(@debit_card), notice: "Debit card was successfully created." }
        format.json { render :show, status: :created, location: @debit_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debit_cards/1 or /debit_cards/1.json
  def update
    respond_to do |format|
      if @debit_card.update(debit_card_params)
        format.html { redirect_to debit_card_url(@debit_card), notice: "Debit card was successfully updated." }
        format.json { render :show, status: :ok, location: @debit_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @debit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debit_cards/1 or /debit_cards/1.json
  def destroy
    @debit_card.destroy

    respond_to do |format|
      format.html { redirect_to debit_cards_url, notice: "Debit card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debit_card
      @debit_card = DebitCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debit_card_params
      params.require(:debit_card).permit(:key)
    end
end
