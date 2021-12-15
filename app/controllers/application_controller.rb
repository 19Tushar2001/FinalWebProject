class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :authenticate_user!
  helper_method :cart
  add_breadcrumb "home", :root_path
  add_breadcrumb "Planes by specific manufacturer", :manufacturers_path

  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password)}
  end
  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Plane.find(session[:shopping_cart])
  end
end
