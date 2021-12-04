class PlaneSearchController < ApplicationController
  def index
    if params[:search].blank? && params[:category].blank?
      redirect_to(root_path, alert:'Empty field!') and return
    elsif params[:search].blank? && !params[:category].blank?
      parameter = params[:category]
      plane = Manufacturer.find(parameter).plane
      @resultSet = plane
    elsif !params[:search].blank? && params[:category].blank?
      parameter = params[:search].downcase
      @resultSet = Plane.all.where("lower(model) like ?", "%#{parameter}%")
    else
      parameter = params[:search].downcase
      category = params[:category]
      plane = Plane.includes(:manufacturer).all.where(manufacturer:category)
      @resultSet = plane.where('lower(model) like ?', "%#{parameter}%")
    end
    end
  end

