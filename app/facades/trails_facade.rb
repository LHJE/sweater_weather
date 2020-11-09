class TrailsFacade
  def self.get_trails(lat, lon)
    trails = TrailsDatabase.get_trails(lat, lon)
    forecast = WeatherFacade.get_trail_forecast(lat, lon)
    Trails.new(trails, forecast, lat, lon)
  end
end
