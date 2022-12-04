class ParksController < ApplicationController

  def index
    states = params[:states]
    @park_locations = Park.search(states)
    json_response(@park_locations)
  end


  def show
    @park_location = Park.find(params[:id])
    json_response(@park_location)
  end

  def create
    @park_location = Park.create(park_location_params)
    json_response(@park_location, :created)
  end

  def update
    @park_location = Park.find(params[:id])
    if @park_location.update!(park_location_params)
      render status: 200, json: {
      message: "This park_location has been updated successfully."}
    end
  end

  def destroy
    @park_location = Park.find(params[:id])
    if @park_location.destroy!
      render status: 200, json: {
      message: "This park_location has been deleted successfully."}
    end
    
  end

  private
  def park_location_params
    params.permit(:state, :park)
  end
end