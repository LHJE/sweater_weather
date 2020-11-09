class Api::V1::WeatherController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long(params[:location])
    forecast = WeatherFacade.get_forecast(lat_and_long[:lat], lat_and_long[:lng])
    render json: ForecastSerializer.new(forecast)
  end

end
