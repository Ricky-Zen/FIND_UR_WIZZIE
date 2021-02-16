class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
