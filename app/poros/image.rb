class Image
  attr_reader :id,
              :location,
              :image_url,
              :dimensions,
              :credit

  def initialize(data, location)
    @location = location
    @image_url = data[:urls][:full]
    @dimensions = {}
    @dimensions[:width] = data[:width]
    @dimensions[:height] = data[:height]
    @credit = {}
    @credit[:author] = data[:user][:name]
    @credit[:author_profile] = data[:user][:links][:self]
  end
end
