require 'rails_helper'

RSpec.describe 'Search Facade' do
  it "It returns lat and long" do
    location = 'denver, co'
    lat_and_long = SearchFacade.find_lat_and_long(location)

    expect(lat_and_long).to eq({:lat=>39.738453, :lng=>-104.984853})
  end

  it "It returns driving distance between two places" do
    place_1 = [39.738453, -104.984853]
    place_2 = [39.9388, -105.2582]

    route = SearchFacade.find_route_with_lat_long(place_1, place_2)

    expect(route[:distance]).to eq(23.166)
  end
end
