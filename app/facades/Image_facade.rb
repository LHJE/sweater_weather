class ImageFacade
  def self.get_image(description, location)
    image = ImageDatabase.get_image(description, location)[:results][0]
    Image.new(image, location)
  end

end
