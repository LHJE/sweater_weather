require 'rails_helper'

RSpec.describe "Location Database" do
  it "Can return lat and long for a city" do
    location = LocationDatabase.get_lat_and_long("denver, co")

    expect(location).to be_a(Hash)
    expect(location[:lat]).to be_a(Float)
    expect(location[:lng]).to be_an(Float)
  end
end
