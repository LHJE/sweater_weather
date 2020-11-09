class TrailsFacade
  def self.get_trails(lat, lon, location)
    trails = TrailsDatabase.get_trails(lat, lon)
    forecast = WeatherFacade.get_current_forecast(lat, lon)
    Trails.new(trails, forecast, lat, lon, location)
  end
end
