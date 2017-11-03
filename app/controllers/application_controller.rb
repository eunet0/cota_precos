class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  http_basic_authenticate_with name: "wilson", password: "wilson"
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:rua, :bairro, :complemento, :cidade, :foto, :numero])
  end
end
