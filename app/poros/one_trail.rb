class OneTrail
  attr_reader :id,
              :name,
              :summary,
              :difficulty,
              :location

  def initialize(data, lat, lon)
    @id = nil
    require "pry"; binding.pry
    @name = data[:name]
    @summit = data[:summary]
    @difficulty = data[:difficulty]
    @location = data[:location]
    @distance_to_trail = get_distance([lat, lon], [data[:latitude], data[:longitude]])

    def get_distance(starting_location, ending_location)
      SearchFacade.find_distance(starting_location, ending_location)
    end
  end

end
