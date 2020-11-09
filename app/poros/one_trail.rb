class OneTrail
  attr_reader :id,
              :name,
              :summary,
              :difficulty,
              :location

  def initialize(data, lat, lon)
    @name = data[:name]
    @summary = data[:summary]
    @difficulty = data[:difficulty]
    @location = data[:location]
    @distance_to_trail = get_distance([lat, lon], [data[:latitude], data[:longitude]]).to_s
  end

  def get_distance(starting_location, ending_location)
    SearchFacade.find_distance(starting_location, ending_location)
  end

end
