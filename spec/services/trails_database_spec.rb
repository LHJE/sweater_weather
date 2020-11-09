require 'rails_helper'

RSpec.describe "Trails Database" do
  it "Can return trails data for a geolocation" do
    lat = 39.738453
    lon = -104.984853

    trails = TrailsDatabase.get_trails(lat, lon)

    expect(trails).to be_a(Array)
  end
end
