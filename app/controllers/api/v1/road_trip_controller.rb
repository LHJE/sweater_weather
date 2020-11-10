class Api::V1::RoadTripController < ApplicationController

  def create
    trip_params = JSON.parse(request.raw_post, symbolize_names: true)
    user = User.find_by(api_key: trip_params[:api_key])
    if user.nil?
      render json: {error: "API Key Not In Our System"} , status: 401
    else
      road_trip = RoadTripFacade.get_road_trip(trip_params)
      render json: RoadTripSerializer.new(road_trip), status: 201
    end
  end
end
