class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.order(:name)
  end

  def show
    @planes = Manufacturer.find(params[:id]).plane
  end

end