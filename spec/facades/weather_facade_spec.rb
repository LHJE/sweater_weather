require 'rails_helper'
RSpec.describe 'Weather Facade' do
  it "It returns forecast poro" do
    lat = 39.738453
    lon = -104.984853

    forecast = WeatherFacade.get_forecast(lat, lon)

  end
end
