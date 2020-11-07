require 'rails_helper'

RSpec.describe "Weather Database" do
  it "Can return forecast data for a geolocation" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherDatabase.get_weather(lat, lon)
  end
end
