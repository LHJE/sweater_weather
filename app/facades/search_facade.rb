class SearchFacade
  def self.find_lat_and_long(location)
    LocationDatabase.get_lat_and_long(location)
  end

  def self.find_distance(starting_location, ending_location)
    attributes = DistanceDatabase.find_distance(starting_location, ending_location)

  end
end
