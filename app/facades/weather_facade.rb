class WeatherFacade
  def self.get_forecast(lat, lon)
    weather = WeatherService.get_full_weather(lat, lon)
    Weather.new(weather)
  end

  def self.get_hourly_forecast(lat, lon)
    weather = WeatherService.get_hourly_weather(lat, lon)[:hourly]
    weather.map do |day|
      HourlyForecast.new(day)
    end
  end

  def self.get_current_forecast(lat, lon)
    WeatherService.get_current_weather(lat, lon)
  end
end
