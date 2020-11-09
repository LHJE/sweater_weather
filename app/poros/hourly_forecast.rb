class HourlyForecast
  attr_reader :id,
              :temperature,
              :hour,
              :icon

  def initialize(data)
    @hour = formatted_hour(data[:dt])
    @temperature = data[:temp]
    @icon = data[:weather][0][:icon]
  end

  def formatted_hour(iso)
    Time.at(iso)
  end
end
