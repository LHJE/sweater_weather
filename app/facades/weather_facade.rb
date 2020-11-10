class WeatherFacade
  def self.get_forecast(lat, lon)
    weather = WeatherDatabase.get_full_weather(lat, lon)
    Weather.new(weather)
  end

  def self.get_current_forecast(lat, lon)
    WeatherDatabase.get_current_weather(lat, lon)
  end
end
