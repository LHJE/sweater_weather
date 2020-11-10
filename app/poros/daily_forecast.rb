class DailyForecast
  attr_reader :date,
              :conditions,
              :max_temp,
              :min_temp,
              :sunrise,
              :sunset

  def initialize(data)
    @date = formatted_date(data[:dt])
    @sunrise = formatted_time(data[:sunrise])
    @sunset = formatted_time(data[:sunset])
    @max_temp = data[:temp][:max]
    @min_temp = data[:temp][:min]
    @conditions = data[:weather][0][:description]
    # @temperature = data[:temp][:day]
    # @dew_point = data[:dew_point]
  end

  def formatted_date(iso)
    Time.at(iso).to_s.at(0..9)
  end

  def formatted_time(iso)
    Time.at(iso).to_s
  end
end
