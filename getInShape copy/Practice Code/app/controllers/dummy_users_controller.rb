class DummyUsersController < ApplicationController
  before_action :set_dummy_user, only: [:show, :edit, :update, :destroy]

  # GET /dummy_users
  # GET /dummy_users.json
  def index
    @dummy_users = DummyUser.all
  end

  # GET /dummy_users/1
  # GET /dummy_users/1.json
  def show
  end

  # GET /dummy_users/new
  def new
    @dummy_user = DummyUser.new
  end

  # GET /dummy_users/1/edit
  def edit
  end

  # POST /dummy_users
  # POST /dummy_users.json
  def create
    @dummy_user = DummyUser.new(dummy_user_params)

    respond_to do |format|
      if @dummy_user.save
        format.html { redirect_to @dummy_user, notice: 'Dummy user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dummy_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @dummy_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummy_users/1
  # PATCH/PUT /dummy_users/1.json
  def update
    respond_to do |format|
      if @dummy_user.update(dummy_user_params)
        format.html { redirect_to @dummy_user, notice: 'Dummy user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dummy_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy_users/1
  # DELETE /dummy_users/1.json
  def destroy
    @dummy_user.destroy
    respond_to do |format|
      format.html { redirect_to dummy_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummy_user
      @dummy_user = DummyUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dummy_user_params
      params.require(:dummy_user).permit(:name, :email)
    end
end
