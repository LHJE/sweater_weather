require 'rails_helper'

RSpec.describe "Weather Service" do
  it "Can return forecast data for a geolocation" do
    location = "denver, co"
    description = "Cloudy"

    image = ImageService.get_image(description, location)[:results][0]

    expect(image).to be_a(Hash)
    expect(image[:id]).to be_a(String)
    expect(image[:created_at]).to be_a(String)
    expect(image[:updated_at]).to be_a(String)
    expect(image[:promoted_at]).to be_a(NilClass)
    expect(image[:width]).to be_a(Numeric)
    expect(image[:height]).to be_a(Numeric)
    expect(image[:color]).to be_a(String)
    expect(image[:blue_hash]).to be_a(NilClass)
    expect(image[:description]).to be_a(String)
    expect(image[:alt_description]).to be_a(String)
    expect(image[:urls]).to be_a(Hash)
    expect(image[:categories]).to be_a(Array)
    expect(image[:likes]).to be_a(Numeric)
    expect(image[:liked_by_user]).to be_a(FalseClass)
    expect(image[:current_user_collections]).to be_a(Array)
    expect(image[:sponsorship]).to be_a(NilClass)
    expect(image[:user]).to be_a(Hash)
    expect(image[:tags]).to be_a(Array)
  end
end
