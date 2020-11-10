class Api::V1::TrailsController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long(params[:location])
    trails = TrailsFacade.get_trails(lat_and_long[:lat], lat_and_long[:lng], params[:location])
    render json: TrailSerializer.new(trails)
  end

end
