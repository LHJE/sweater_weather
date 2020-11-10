class RoadTrip

  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(trip_params, forecast, route)
    @start_city = trip_params[:origin]
    @end_city = trip_params[:destination]
    @travel_time = get_route_time(route[:realTime])
    @weather_at_eta = get_future_weather_forecast(route[:realTime], forecast)
  end

end
