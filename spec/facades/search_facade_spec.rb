require 'rails_helper'

RSpec.describe 'Search Facade' do
  it "It returns lat and long" do
    location = 'denver, co'
    lat_and_long = SearchFacade.find_lat_and_long(location)

    expect(lat_and_long).to eq({:lat=>39.738453, :lng=>-104.984853})
  end
end
