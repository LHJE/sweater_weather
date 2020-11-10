require 'rails_helper'

RSpec.describe 'Road Trip Facade' do
  it "returns Road Trip params" do
    trip_params = {
      :origin=>"Denver,CO",
      :destination=>"Pueblo,CO",
      :api_key=>"9EjiyN2w8u1fETO20rWVDA=="
    }
    road_trip = RoadTripFacade.get_road_trip(trip_params)

    expect(road_trip).to be_a(RoadTrip)
    expect(road_trip.start_city).to be_a(String)
    expect(road_trip.end_city).to be_a(String)
    expect(road_trip.travel_time).to be_a(String)

    expect(road_trip.weather_at_eta).to be_a(Hash)
    expect(road_trip.weather_at_eta[:temperature]).to be_a(Numeric)
    expect(road_trip.weather_at_eta[:conditions]).to be_a(String)

  end
end
