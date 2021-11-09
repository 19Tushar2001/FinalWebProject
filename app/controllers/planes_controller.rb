class PlanesController < ApplicationController
  def index
    @planes= Plane.all
  end

  def show
    @planes= Plane.find(params[:id])
  end
end
