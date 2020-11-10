class Api::V1::RoadTripController < ApplicationController

  def create
    trip_params = JSON.parse(request.raw_post, symbolize_names: true)
    user = User.find_by(api_key: trip_params[:api_key])
    if user.nil?
      render json: {error: "API Key Not In Our System"} , status: 401
    else
      require "pry"; binding.pry
      
      render json: RoadTripSerializer.new(user), status: 201
    end
  end


end
