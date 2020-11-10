class RoadTripFacade
  def self.get_road_trip(trip_params)
    lat_and_long = SearchFacade.find_lat_and_long(trip_params[:destination])
    forecast = WeatherFacade.get_hourly_forecast(lat_and_long[:lat], lat_and_long[:lng])
    route = SearchFacade.find_route_with_city_names(trip_params[:origin], trip_params[:destination])
    RoadTrip.new(trip_params, forecast, route)
  end
end
