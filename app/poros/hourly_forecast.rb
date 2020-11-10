class HourlyForecast
  attr_reader :temperature,
              :hour,
              :wind_speed,
              :wind_direction,
              :conditions

  def initialize(data)
    @hour = formatted_time(data[:dt])
    @temperature = data[:temp]
    @wind_speed = data[:wind_speed]
    @wind_direction = readable_compass(data[:wind_deg])
    @conditions = data[:weather][0][:description]
  end

  def formatted_time(iso)
    Time.at(iso).to_s.at(0..18)
  end

  def readable_compass(degrees)
    CompassPoint.compass_quadrant_bearing(degrees)
  end
end
