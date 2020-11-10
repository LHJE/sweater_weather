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
    else
      distance_of_time_in_words(time)
    end
  end

  def get_future_weather_forecast(time, forecasts)
    if time.nil?
      {temperature: forecasts[0].temperature, conditions: forecasts[0].conditions}
    else
      if time > 172800
        "There is no forcast that far into the future"
      else
        future_time = Time.new + time
        date = future_time.to_s.split(" ")[0]
        if future_time.min < 31
          future_forecast = forecasts.find do |forecast|
            if forecast.hour.split(" ")[0] == date
              forecast.hour.to_time.hour == future_time.hour
            end
          end
        else
          future_forecast = forecasts.find do |forecast|
            if forecast.hour.split(" ")[0] == date
              forecast.hour.to_time.hour == future_time.hour + 1
            else
              forecast.hour.to_time.hour == future_time.hour
            end
          end
        end
        {temperature: future_forecast.temperature, conditions: future_forecast.conditions}
      end
    end
  end
end
