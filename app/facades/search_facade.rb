class SearchFacade
  def self.find_lat_and_long(location)
    LocationDatabase.get_lat_and_long(location)
  end

  def self.find_distance(starting_location, ending_location)
    starting_hash = LocationDatabase.find_closest_address(starting_location)
    starting_address = "#{starting_hash[:street]} #{starting_hash[:adminArea5]} #{starting_hash[:adminArea3]} #{starting_hash[:postal_code]}"
    ending_hash = LocationDatabase.find_closest_address(ending_location)
    ending_address = "#{ending_hash[:street]} #{ending_hash[:adminArea5]} #{ending_hash[:adminArea3]} #{ending_hash[:postal_code
    ]}"
    LocationDatabase.find_distance(starting_address, ending_address)
  end
end
