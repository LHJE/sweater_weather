class TrailsService
  def self.get_trails(lat, long)
    key = ENV['TRAILS_API_KEY']
    url = ENV['TRAILS_URL']
    uri = "get-trails?lat=#{lat}&lon=#{long}&maxDistance=30&key=#{key}"
    get_results(url, key, uri)
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)[:trails]
  end
end
