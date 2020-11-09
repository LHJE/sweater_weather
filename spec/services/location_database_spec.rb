require 'rails_helper'

RSpec.describe "Location Database" do
  it "Can return lat and long for a city" do
    location = LocationDatabase.get_lat_and_long("denver, co")

    expect(location).to be_a(Hash)
    expect(location[:lat]).to be_a(Float)
    expect(location[:lng]).to be_an(Float)

    expect(location[:info]).to be_an(NilClass)
    expect(location[:options]).to be_an(NilClass)
    expect(location[:results]).to be_an(NilClass)
  end

  it "Can return distance for two geolocations" do
    place_1 = [39.738453, -104.984853]
    place_2 = [39.9388, -105.2582]

    distance = LocationDatabase.get_trails(place_1, place_2)

    expect(distance).to be_a(Hash)
  end
end
