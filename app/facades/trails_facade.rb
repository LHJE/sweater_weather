class TrailsFacade
  def self.get_trails(lat, lon)
    trails = TrailsDatabase.get_trails(lat, lon)
    Trails.new(trails, lat, lon)
  end
end
