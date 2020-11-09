class WeatherFacade
  def self.get_forecast(lat, lon)
    weather = WeatherDatabase.get_weather(lat, lon)
    Weather.new(weather)
  end
end
