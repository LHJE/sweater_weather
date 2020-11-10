require 'rails_helper'

RSpec.describe 'Image Facade' do
  it "It returns forecast poro" do
    location = "denver, co"
    forecast = "Snow"

    image = ImageFacade.get_image(forecast, location)

    expect(image).to be_a(Image)

    expect(image.credit).to be_a(Hash)
    expect(image.credit[:author]).to be_a(String)
    expect(image.credit[:author_profile]).to be_a(String)

    expect(image.dimensions).to be_a(Hash)
    expect(image.dimensions[:width]).to be_a(Numeric)
    expect(image.dimensions[:height]).to be_a(Numeric)

    expect(image.image_url).to be_a(String)

    expect(image.location).to eq(location)
  end
end
