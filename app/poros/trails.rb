class Trails
  attr_reader :id,
              :location,
              :forecast,
              :trails

  def initialize(data, forecast, lat, lon)
    @location = find_location(lat, lon)
    @forecast = {}
    @forecast[:summary] = forecast[:weather][0][:description]
    @forecast[:temperature] = forecast[:temp]
    @trails = format_trails(data, lat, lon, @location)
  end

  def format_trails(data, lat, lon, location)
    data.map do |day|
      OneTrail.new(day, lat, lon, location)
    end
  end

  def find_location(lat, lon)
    starting_hash = LocationDatabase.find_closest_address([lat, lon])
    "#{starting_hash[:street]} #{starting_hash[:adminArea5]} #{starting_hash[:adminArea3]} #{starting_hash[:postal_code]}"
  end

end
