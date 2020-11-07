class WeatherFacade
  def self.get_forecast(lat, lon)
    WeatherDatabase.get_weather(lat, lon)
  end
end
