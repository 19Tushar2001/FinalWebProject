class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart
  add_breadcrumb "home", :root_path
  add_breadcrumb "Planes by specific manufacturer", :manufacturers_path

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Plane.find(session[:shopping_cart])
  end
end
