class UsersController < ApplicationController
  def index
    @users = User.all
    @user_id = current_user[:id]
  end

  def show
    @user = User.find(params[:id])
  end
end
