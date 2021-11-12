class PlaneSearchController < ApplicationController
  def index
    if params[:search].blank? or params[:manufacturer].blank?
      redirect_to(root_path, alert:'Emplty filed!') and return
    elseif params[:search].blank? && !params[:manufacturer].blank?
    cat = params[:manufacturer].downcase
    category = Manufacturer.all.where()
    end
  end
end
