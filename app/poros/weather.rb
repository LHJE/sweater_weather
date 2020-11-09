class Weather
  attr_reader :id,
              :temperature,
              :temp_high,
              :temp_low,
              :humidity,
              :description,
              :icon,
              :sunrise,
              :sunset,
              :feels_like,
              :uvi,
              :visibility,
              :daily,
              :hourly

  def initialize(data)
    @temperature = data[:current][:temp]
    @temp_high = data[:daily][0][:temp][:max]
    @temp_low = data[:daily][0][:temp][:min]
    @humidity = data[:current][:humidity]
    @description = data[:current][:weather][0][:description]
    @icon = data[:daily][0][:weather][0][:icon]
    @sunrise = formatted_hour(data[:current][:sunrise])
    @sunset = formatted_hour(data[:current][:sunset])
    @feels_like = data[:current][:feels_like]
    @uvi = data[:current][:uvi]
    @visibility = visibility_forecast(data[:current][:visibility])
    @hourly = hourly_forecast(data[:hourly])
    @daily = seven_day_forecast(data[:daily])
  end

end
