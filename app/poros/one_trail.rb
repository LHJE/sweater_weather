class OneTrail
  attr_reader :id,
              :name,
              :summary,
              :difficulty,
              :location

  def initialize(data, lat, lon)
    @id = nil
    @name = data[:name]
    @summit = data[:summary]
    @difficulty = data[:difficulty]
    @location = data[:location]
    @distance_to_trail = get_distance([lat, lon], [data[:latitude], data[:longitude]])
  end

  def get_distance(starting_location, ending_location)
    SearchFacade.find_distance(starting_location, ending_location)
  end

end
