class RoadTrip
  include ActionView::Helpers::DateHelper
  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(trip_params, forecast, route)
    time = get_time(route[:formattedTime])
    @start_city = trip_params[:origin]
    @end_city = trip_params[:destination]
    @travel_time = get_route_time(time)
    @weather_at_eta = get_future_weather_forecast(time, forecast)
  end

  def get_time(time)
    if time.nil?
      nil
    else
      split_time = time.split(":").map(&:to_i)
      (((split_time[0] * 60) + split_time[1]) * 60) + split_time[2]
    end
  end

  def get_route_time(time)
    if time.nil?
      "This destination is not reachable"
    elsif time == 0
      "This destination is not reachable.  You may have typed the name in incorrectly.  Perhaps you are already there?"
    else
      distance_of_time_in_words(time)
    end
  end

  def get_future_weather_forecast(time, forecasts)
    if time == 0 || time.nil?
      "There wasn't enough information to tell you the forecast."
    else
      test_if_forecast_exists(time, forecasts)
    end
  end

  def test_if_forecast_exists(time, forecasts)
    if time > 172800
      "There is no forcast that far into the future"
    else
      find_future_forecast(time, forecasts)
    end
  end

  def find_future_forecast(time, forecasts)
    future_time = Time.new + time
    date = future_time.to_s.split(" ")[0]
    future_forecast = get_future_forecast_depending_on_time(future_time, forecasts, date)
    {temperature: future_forecast.temperature, conditions: future_forecast.conditions}
  end

  def get_future_forecast_depending_on_time(future_time, forecasts, date)
    if future_time.min < 31
      find_specific_forecast(future_time.hour, forecasts, date)
    else
      find_specific_forecast(future_time.hour + 1, forecasts, date)
    end
  end

  def find_specific_forecast(future_time_hour, forecasts, date)
    forecasts.find do |forecast|
      if forecast.hour.split(" ")[0] == date
        forecast.hour.to_time.hour == future_time_hour
      end
    end
  end
end
