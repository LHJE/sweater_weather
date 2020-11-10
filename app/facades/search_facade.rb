class SearchFacade
  def self.find_lat_and_long(location)
    LocationDatabase.get_lat_and_long(location)
  end

  def self.find_distance(starting_location, ending_location)
    ending_hash = LocationDatabase.find_closest_address(ending_location)
    ending_address = "#{ending_hash[:street]} #{ending_hash[:adminArea5]} #{ending_hash[:adminArea3]} #{ending_hash[:postal_code
    ]}"
    LocationDatabase.find_distance(starting_location, ending_address)
  end
end
