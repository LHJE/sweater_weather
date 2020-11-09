class LocationDatabase
  def self.get_lat_and_long(location)
    key = ENV['MAP_API_KEY']
    url = ENV['MAP_URL']
    uri = "/geocoding/v1/address?key=#{key}&location=#{location}"
    get_results(url, key, uri)
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
