class Trails
  attr_reader :id,
              :forecast,
              :trails

  def initialize(data, forecast, lat, lon)
    @id = nil
    @forecast = {}
    @forecast[:summary] = forecast[:conditions]
    @forecast[:tempurature] = forecast[:tempurature]
    @trails = format_trails(data, lat, lon)
  end

  def format_trails(data, lat, lon)
    data.map do |day|
      OneTrail.new(day, lat, lon)
    end
  end

end
