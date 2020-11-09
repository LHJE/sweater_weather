class Api::V1::ImageController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long(params[:location])
    forecast = WeatherFacade.get_current_forecast(lat_and_long[:lat], lat_and_long[:lng])
    image = ImageFacade.get_image(forecast[:weather][0][:main], params[:location])
    render json: ImageSerializer.new(image)
  end

end
