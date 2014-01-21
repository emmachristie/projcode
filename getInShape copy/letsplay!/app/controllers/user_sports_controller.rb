class UserSportsController < ApplicationController
  before_action :set_user_sport, only: [:show, :edit, :update, :destroy]

  # GET /user_sports
  # GET /user_sports.json
  def index
    @user_sports = UserSport.all
  end

  # GET /user_sports/1
  # GET /user_sports/1.json
  def show
  end

  # GET /user_sports/new
  def new
    @user_sport = UserSport.new
  end

  # GET /user_sports/1/edit
  def edit
  end

  # POST /user_sports
  # POST /user_sports.json
  def create
    @user_sport = UserSport.new(user_sport_params)

    respond_to do |format|
      if @user_sport.save
        format.html { redirect_to @user_sport, notice: 'User sport was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_sport }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_sports/1
  # PATCH/PUT /user_sports/1.json
  def update
    respond_to do |format|
      if @user_sport.update(user_sport_params)
        format.html { redirect_to @user_sport, notice: 'User sport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sports/1
  # DELETE /user_sports/1.json
  def destroy
    @user_sport.destroy
    respond_to do |format|
      format.html { redirect_to user_sports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sport
      @user_sport = UserSport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_sport_params
      params.require(:user_sport).permit(:sport, :user_id, :user_name)
    end
end
