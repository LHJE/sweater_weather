class Trails
  attr_reader :id,
              :trails

  def initialize(data)
    @id = nil
    @trails = format_trails(data)
  end

  def format_trails(data)
    data.map do |day|
      OneTrail.new(day)
    end
  end

end
