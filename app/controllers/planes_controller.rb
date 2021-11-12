class PlanesController < ApplicationController
  def index
    # @planes = Plane.all
    @planes = Plane.paginate(:page => params[:page], per_page:5)
  end
  def show
    @planes = Plane.find(params[:id])
  end
end
