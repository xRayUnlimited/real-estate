class Api::PropertiesController < ApplicationController
  before_action :set_page
  def index
    properties = Property.page(@page).available
    total_pages = properties.total_pages
    render json: {
      properties: properties,
      total_pages: total_pages,
    }
  end

  def city
    properties = Property.page(@page).by_city(params[:city])
    total_pages = properties.total_pages
    render json: {
      properties: properties,
      total_pages: total_pages,
    }
  end

  private
    def set_page
      @page = params[:page] || 1
    end

end
