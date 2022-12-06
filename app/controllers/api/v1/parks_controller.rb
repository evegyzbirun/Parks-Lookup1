module Api 
  module V1
    class ParksController < ApplicationController

      def index
        
        if state = params[:state]
          @parks = Park.search(state)
          json_response(@parks)
        else @parks = Park.all
          json_response(@parks)
        end
      end

      def show
        @park = Park.find(params[:id])
        json_response(@park)
      end

      def create
        # @park = Park.create!(park_params)
        # json_response(@park, :created)

        @park = Park.create!(park_params)
        
        if @park.save
          render json: park, status: :created
          
        else
          render json: park.errors, status: :unprocessable_entity
        end
      end

      def update
        @park = Park.find(params[:id])
        if @park.update!(park_params)
          render status: 200, json: {
          message: "This park has been updated successfully."}
        end
      end

      def destroy
        @park = Park.find(params[:id])
        if @park.destroy!
          render status: 200, json: {
          message: "This park has been deleted successfully."}
        end
        
      end

      private
      def park_params
        params.permit(:state, :park)
      end
    end
  end
end