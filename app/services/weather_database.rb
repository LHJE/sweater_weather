class WeatherDatabase
  def self.get_full_weather(lat, lon)
    post_parsed_full_json("data/2.5/onecall", lat, lon)
  end

  def self.post_parsed_full_json(url, lat, lon)
    response = Faraday.get("#{ENV['WEATHER_URL']}/#{url}") do |f|
      f.params['appid'] = ENV['WEATHER_API_KEY']
      f.params['lat'] = lat
      f.params['lon'] = lon
      f.params['exclude'] = 'minutely'
      f.params['units'] = 'imperial'
    end

    JSON.parse(response.body, symbolize_names: :true)
  end

  def self.get_trail_weather(lat, lon)
    post_parsed_trail_json("data/2.5/onecall", lat, lon)
  end

  def self.post_parsed_trail_json(url, lat, lon)
    response = Faraday.get("#{ENV['WEATHER_URL']}/#{url}") do |f|
      f.params['appid'] = ENV['WEATHER_API_KEY']
      f.params['lat'] = lat
      f.params['lon'] = lon
      f.params['exclude'] = 'minutely,hourly,daily'
      f.params['units'] = 'imperial'
    end

    JSON.parse(response.body, symbolize_names: :true)[:current]
  end
end
