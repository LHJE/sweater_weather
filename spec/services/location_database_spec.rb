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

  it "Can return address for  geolocations" do
    place = [39.738453, -104.984853]

    address = LocationDatabase.find_closest_address(place)

    expect(address).to be_a(Hash)
  end

  it "Can return distance for two geolocations" do
    starting_address = "N Sherman St Denver CO "
    ending_address = "4017 Eldorado Springs Dr Boulder CO "

    distance = LocationDatabase.find_distance(starting_address, ending_address)

    expect(distance).to eq(23.166)
  end
end
