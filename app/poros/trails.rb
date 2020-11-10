class Trails
  attr_reader :id,
              :location,
              :forecast,
              :trails

  def initialize(data, forecast, lat, lon, location)
    @location = location
    @forecast = {}
    @forecast[:summary] = forecast[:weather][0][:description]
    @forecast[:temperature] = forecast[:temp]
    @trails = format_trails(data, lat, lon)
  end

  def format_trails(data, lat, lon)
    data.map do |day|
      OneTrail.new(day, lat, lon)
    end
  end
end
