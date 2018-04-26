class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  # Assigns last made computer to the newly logged in user.
  def after_sign_in_path_for(resource)
    if session[:new_computer_id]
      current_computer = Computer.find(session[:new_computer_id])
      current_computer.update(user_id: current_user.id)
    end
    super
  end

end
