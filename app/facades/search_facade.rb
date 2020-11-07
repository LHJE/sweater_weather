class SearchFacade
  def self.find_lat_and_long(location)
    LocationDatabase.get_lat_and_long(location)[:results][0][:locations][0][:latLng]
  end
end
