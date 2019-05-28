class UsersController < ApplicationController

  def index
    @users = User.all
    @user_profiles = UserProfile.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_page
    @user = User.find(1)
  end

end
