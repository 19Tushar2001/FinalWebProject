class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.order(:name)
    add_breadcrumb "index",manufacturers_url, title: "Back to the Index"
  end

  def show
    @planes = Manufacturer.find(params[:id]).plane
  end

end