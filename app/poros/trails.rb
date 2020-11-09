class Trails
  attr_reader :id,
              :trails

  def initialize(data, lat, lon)
    @id = nil
    @trails = format_trails(data, lat, lon)
  end

  def format_trails(data, lat, lon)
    data.map do |day|
      OneTrail.new(day, lat, lon)
    end
  end

end
