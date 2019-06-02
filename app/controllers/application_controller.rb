class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :user_logged_in?
  before_action :profile_exit?

  # サインインした時の遷移先
  def after_sign_in_path_for(resource)
    user_profiles_path
  end

  # サインアウトした時の遷移先
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  # ログイン状況判定
  def user_logged_in?
    unless  user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def profile_exit?
    return if current_user.blank?
    unless UserProfile.find_by(id: current_user.id)
      redirect_to new_user_profile_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
