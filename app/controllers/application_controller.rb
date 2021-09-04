class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  prepend_before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:password, :password_confirmation, :current_password]
    )
  end

end
