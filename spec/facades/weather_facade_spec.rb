require 'rails_helper'
RSpec.describe 'Weather Facade' do
  it "It returns forecast poro" do
    lat = 39.738453
    lon = -104.984853

    forecast = WeatherFacade.get_forecast(lat, lon)

    expect(forecast).to be_a(Hash)
    expect(forecast[:current]).to be_a(Hash)
    expect(forecast[:daily]).to be_an(Array)
    expect(forecast[:current][:humidity]).to be_a(Numeric)
    expect(forecast[:current][:temp]).to be_a(Numeric)
    expect(forecast[:current][:weather]).to be_an(Array)
    expect(forecast[:current][:weather][0]).to be_a(Hash)
    expect(forecast[:current][:weather][0][:description]).to be_a(String)

    expect(forecast[:daily][0]).to be_a(Hash)
    expect(forecast[:daily][0][:humidity]).to be_a(Numeric)
    expect(forecast[:daily][0][:temp][:day]).to be_a(Numeric)
    expect(forecast[:daily][0][:weather]).to be_an(Array)
    expect(forecast[:daily][0][:weather][0]).to be_a(Hash)
    expect(forecast[:daily][0][:weather][0][:description]).to be_a(String)
  end
end
