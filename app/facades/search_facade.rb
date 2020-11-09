class SearchFacade
  def self.find_lat_and_long(location)
    LocationDatabase.get_lat_and_long(location)[:results][0][:locations][0][:latLng]
  end

  def self.find_distance(starting_location, ending_location)
    attributes = LocationDatabase.find_distance(starting_location, ending_location)

  end
end
