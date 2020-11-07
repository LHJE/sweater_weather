require 'rails_helper'
RSpec.describe 'Weather Facade' do
  it "It returns forecast poro" do
    lat = 39.74
    lon = -104.98
    require "pry"; binding.pry
    forecast = WeatherFacade.get_forecast(lat, lon)

  end
end
