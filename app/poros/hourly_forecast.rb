class HourlyForecast
  attr_reader :id,
              :temperature,
              :hour,
              :icon

  def initialize(data)
    @id = nil
    @hour = formatted_time(data[:dt])
    @temperature = data[:temp]
    @wind_speed = data[:wind_speed]
    @wind_direction = readable_compass(data[:wind_deg])
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

  def formatted_time(iso)
    Time.at(iso).to_s.at(11..18)
  end

  def readable_compass(degrees)
    CompassPoint.compass_quadrant_bearing(degrees)
  end
end
