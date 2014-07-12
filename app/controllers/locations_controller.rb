class LocationsController < ApplicationController

  def create
    @location = params[:location]
  end
end
