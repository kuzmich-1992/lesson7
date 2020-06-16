class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def after_sign_in_path_for(_resource)
    new_assessment_path
  end

  def after_sign_out_path_for(resource_or_scope)
    user_session_path
  end

  def user_not_authorized
    render plain: "You Not Authorized"
  end
end
