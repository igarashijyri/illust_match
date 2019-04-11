class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # サインインした時の遷移先
  def after_sign_in_path_for(resource)
  users_path
  #  user_path(current_user[:id])
  end

  # サインアウトした時の遷移先
  def after_sign_out_path_for(resource)
   new_user_session_path
  end

end
