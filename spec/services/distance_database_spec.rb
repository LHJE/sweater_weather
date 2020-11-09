require 'rails_helper'

RSpec.describe "Distance Database" do
  it "Can return distance for two geolocations" do
    place_1 = [39.738453, -104.984853]
    place_2 = [39.9388, -105.2582]

    distance = DistanceDatabase.get_trails(place_1, place_2)

    expect(distance).to be_a(Hash)
  end
end
