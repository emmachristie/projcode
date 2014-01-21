class WelcomeController < ApplicationController
  def index
  	  def create
    @user_info = user_data.new(user_info_params)

    respond_to do |format|
      if @user_info.save
        format.html { redirect_to @user_info, notice: 'User info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_info.errors, status: :unprocessable_entity }
      end
    end
  end
  end
end
