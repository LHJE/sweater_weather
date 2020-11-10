require 'rails_helper'

RSpec.describe 'Trails Facade' do
  it "It returns trails poro" do
    lat = 39.738453
    lon = -104.984853
    location = "denver,co"

    trails = TrailsFacade.get_trails(lat, lon, location)

    expect(trails).to be_a(Trails)

  end
end
