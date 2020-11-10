class Weather
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @id = nil
    @current_weather = {}
    @current_weather[:datetime] = formatted_time(data[:current][:dt])
    @current_weather[:sunrise] = formatted_time(data[:current][:sunrise])
    @current_weather[:sunset] = formatted_time(data[:current][:sunset])
    @current_weather[:temperature] = data[:current][:temp]
    @current_weather[:feels_like] = data[:current][:feels_like]
    @current_weather[:humidity] = data[:current][:humidity]
    @current_weather[:uvi] = data[:current][:uvi]
    @current_weather[:visibility] = visibility_forecast(data[:current][:visibility])
    @current_weather[:conditions] = data[:current][:weather][0][:description]
    @current_weather[:icon] = data[:daily][0][:weather][0][:icon]
    @daily_weather = five_day_forecast(data[:daily])
    @hourly_weather = eight_hour_forecast(data[:hourly])
  end

  def formatted_time(iso)
    Time.at(iso).to_s
  end

  def five_day_forecast(data)
    data.map do |day|
      DailyForecast.new(day)
    end.take(5)
  end

  def eight_hour_forecast(data)
    data.map do |day|
      HourlyForecast.new(day)
    end.take(8)
  end

  def visibility_forecast(distance)
    Unitwise(distance, 'kilometer').convert_to('mile')[:value].to_f
  end
end
