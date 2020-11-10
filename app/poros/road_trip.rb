class RoadTrip
  include ActionView::Helpers::DateHelper
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

  def get_route_time(time)
    if time.nil?
      "This destination is not reachable"
    else
      distance_of_time_in_words(time)
    end
  end

  def get_future_weather_forecast(time, forecasts)
    if time.nil?
      {temperature: forecasts[0].temperature, conditions: forecasts[0].conditions}
    else
      future_time = Time.new + time
      if future_time.min < 31
        future_forecast = forecasts.find do |forecast|
          forecast.hour.to_time.hour == future_time.hour
        end
      else
        future_forecast = forecasts.find do |forecast|
          forecast.hour.to_time.hour == future_time.hour + 1
        end
      end

    end
  end
end
