class DailyForecast
  attr_reader :id,
              :date,
              :temperature,
              :temp_high,
              :temp_low,
              :dew_point,
              :description,
              :icon

  def initialize(data)
    @date = formatted_date(data[:dt])
    @temperature = data[:temp][:day]
    @temp_high = data[:temp][:max]
    @temp_low = data[:temp][:min]
    @dew_point = data[:dew_point]
    @description = data[:weather][0][:main]
    @icon = data[:weather][0][:icon]
  end

  def formatted_date(iso)
    Time.at(iso)
  end
end
