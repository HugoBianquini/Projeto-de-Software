class AddressesUsersController < ApplicationController
  before_action :set_addresses_user, only: %i[ show edit update destroy ]

  # GET /addresses_users or /addresses_users.json
  def index
    @addresses_users = AddressesUser.all
  end

  # GET /addresses_users/1 or /addresses_users/1.json
  def show
  end

  # GET /addresses_users/new
  def new
    @addresses_user = AddressesUser.new
  end

  # GET /addresses_users/1/edit
  def edit
  end

  # POST /addresses_users or /addresses_users.json
  def create
    @addresses_user = AddressesUser.new(addresses_user_params)

    respond_to do |format|
      if @addresses_user.save
        format.html { redirect_to addresses_user_url(@addresses_user), notice: "Addresses user was successfully created." }
        format.json { render :show, status: :created, location: @addresses_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @addresses_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses_users/1 or /addresses_users/1.json
  def update
    respond_to do |format|
      if @addresses_user.update(addresses_user_params)
        format.html { redirect_to addresses_user_url(@addresses_user), notice: "Addresses user was successfully updated." }
        format.json { render :show, status: :ok, location: @addresses_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @addresses_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses_users/1 or /addresses_users/1.json
  def destroy
    @addresses_user.destroy

    respond_to do |format|
      format.html { redirect_to addresses_users_url, notice: "Addresses user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addresses_user
      @addresses_user = AddressesUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def addresses_user_params
      params.require(:addresses_user).permit(:user_id, :address_id)
    end
end
