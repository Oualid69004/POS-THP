class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
  end

  def as_access?(screen_name)
    current_user.role.screens.each do |screen|
      if screen.name == screen_name
        return true 
      end
    end
    redirect_to root_path
  end

end
