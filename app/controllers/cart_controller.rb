class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    session[:shopping_cart] << id # puts onto the array
    plane = Plane.find(id)
    flash[:notice] =  "❤️ you just added #{plane.model} to cart."
    redirect_to root_path
  end
  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    plane = Plane.find(id)
    flash[:notice] =  "💔 you just deleted #{plane.model} from cart."
    redirect_to root_path
  end
end
