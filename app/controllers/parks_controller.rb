class ParksController < ApplicationController

  def index
    @park_locations = {"park_name": "Crater Lake National Park."}
    json_response(@park_locations)
  end


  def show
    @park_locations = Park.find(params[:id])
    json_response(@park_location)
  end

  def create
    @park_locations = Park.create(park_location_params)
    json_response(@park_location)
  end

  def update
    @park_location = Park.find(params[:id])
    @park_location.update(park_location_params)
  end

  def destroy
    @park_location = Park.find(params[:id])
    @park_location.destroy
  end

  private
  def park_location_params
    params.permit(:state, :park)
  end
end