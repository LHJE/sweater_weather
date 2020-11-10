class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :image_url, :dimensions, :credit
end
