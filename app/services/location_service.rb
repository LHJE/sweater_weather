class LocationService
  def self.get_lat_and_long(location)
    key = ENV['MAP_API_KEY']
    url = ENV['MAP_URL']
    uri = "/geocoding/v1/address?key=#{key}&location=#{location}"
    get_results(url, key, uri)[:results][0][:locations][0][:latLng]
  end

  def self.find_closest_address(location)
    key = ENV['MAP_API_KEY']
    url = ENV['MAP_URL']
    uri = "/geocoding/v1/address?key=#{key}&location=#{location[0]},#{location[1]}&includeRoadMetadata=true&includeNearestIntersection=true"
    get_results(url, key, uri)[:results][0][:locations][0]
  end

  def self.find_route(starting_location, ending_location)
    key = ENV['MAP_API_KEY']
    url = ENV['MAP_URL']
    uri = "/directions/v2/route?key=#{key}&from=#{starting_location}&to=#{ending_location}"
    get_results(url, key, uri)[:route]
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
