class TrailsFacade
  def self.get_trails(lat, lon)
    trails = TrailsDatabase.get_trails(lat, lon)
    forecast = WeatherFacade.get_forecast(lat, lon).current_weather
    Trails.new(trails, forecast, lat, lon)
  end
end
