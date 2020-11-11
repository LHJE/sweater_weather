class ImageService
  def self.get_image(description, location)
    key = ENV['WEATHER_IMAGE_KEY']
    url = ENV['WEATHER_IMAGE_URL']
    get_results(url, key, description, location)
  end

  def self.get_results(url, key, description, location)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    response = conn.get('search/photos') do |req|
      req.params[:page] = 1
      req.params[:query] = "#{description} #{location}"
      req.params[:client_id] = key
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
