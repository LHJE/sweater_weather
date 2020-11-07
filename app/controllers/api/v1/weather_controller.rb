class Api::V1::WeatherController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long(params[:location])
    render json: LocationSerializer.new(@weather)

  end

end
