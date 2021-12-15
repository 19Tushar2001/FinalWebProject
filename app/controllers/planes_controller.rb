class PlanesController < ApplicationController


  def index
    @planes = Plane.all.page(params[:page]).per(10)

  end
  def show
    @planes = Plane.find(params[:id])
    add_breadcrumb "Detailed Information", :planes_path
  end
end
