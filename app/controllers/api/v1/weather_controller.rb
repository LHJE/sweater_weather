class Api::V1::WeatherController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long(params[:location])


  end

end