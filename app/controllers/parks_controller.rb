class ParksController < ApplicationController

  def index
    @parks = {"park": "Crater Lake National Park."}
    json_response(@parks)
  end


  def show
    @parks = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @parks = Park.create(park_params)
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  private
  def park_params
    params.permit(:state, :park)
  end
end