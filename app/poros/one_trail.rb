class OneTrail
  attr_reader :id,
              :name,
              :summary,
              :difficulty,
              :location

  def initialize(data)
    @id = nil
    require "pry"; binding.pry
    @name = data[:name]
    @summit = data[:summary]
    @difficulty = data[:difficulty]
    @location = data[:location]

  end

end
