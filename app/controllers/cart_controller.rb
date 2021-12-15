class CartController < ApplicationController
  def create
    #  logger.debug("Adding #{params[:id]} to cart")

    id = params[:id].to_i
    session[:shopping_cart] << id # push to an array
    plane = Plane.find(id)
    flash[:notice] = "❤️ #{plane.model} added to cart"
    redirect_to request.referrer
  end

  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    plane = Plane.find(id)
    flash[:notice] = "💔 #{plane.model} removed to cart"
    redirect_to request.referrer
  end

  def index
    @items = Plane.find(session[:shopping_cart])
    @subtotal = 0
    @Gst_in_percent = current_user.province.GST
    @Pst_in_percent = current_user.province.PST
    @Hst_in_percent = current_user.province.HST
  end


end