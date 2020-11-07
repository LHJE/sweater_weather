class SearchFacade
  def self.find_lat_and_long(location)
    attributes = LocationDatabase.get_lat_and_long(location)

  end
end
