require 'rails_helper'

RSpec.describe "Weather Database" do
  it "Can return forecast data for a geolocation" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherDatabase.get_weather(lat, lon)

    expect(weather).to be_a(Hash)
    expect(weather[:current]).to be_a(Hash)
    expect(weather[:daily]).to be_an(Array)
    expect(weather[:hourly]).to be_an(Array)
    expect(weather[:current][:temp]).to be_a(Numeric)

    expect(weather[:current][:humidity]).to be_a(Numeric)
    expect(weather[:current][:weather][0][:description]).to be_a(String)
    expect(weather[:daily][0][:weather][0][:icon]).to be_a(String)
    expect(weather[:current][:weather]).to be_an(Array)
    expect(weather[:current][:weather][0]).to be_a(Hash)
    expect(weather[:current][:sunrise]).to be_a(Numeric)
    expect(weather[:current][:sunset]).to be_a(Numeric)
    expect(weather[:current][:feels_like]).to be_a(Numeric)
    expect(weather[:current][:uvi]).to be_a(Numeric)
    expect(weather[:current][:visibility]).to be_a(Numeric)

    expect(weather[:daily][0]).to be_a(Hash)
    expect(weather[:daily][0][:dt]).to be_a(Numeric)
    expect(weather[:daily][0][:temp][:day]).to be_a(Numeric)
    expect(weather[:daily][0][:temp][:min]).to be_a(Numeric)
    expect(weather[:daily][0][:temp][:max]).to be_a(Numeric)
    expect(weather[:daily][0][:dew_point]).to be_a(Numeric)
    expect(weather[:daily][0][:weather]).to be_an(Array)
    expect(weather[:daily][0][:weather][0]).to be_a(Hash)
    expect(weather[:daily][0][:weather][0][:main]).to be_a(String)
    expect(weather[:daily][0][:weather][0][:icon]).to be_a(String)

    expect(weather[:hourly][0]).to be_a(Hash)
    expect(weather[:hourly][0][:dt]).to be_a(Numeric)
    expect(weather[:hourly][0][:temp]).to be_a(Numeric)
    expect(weather[:hourly][0][:dew_point]).to be_a(Numeric)
    expect(weather[:hourly][0][:weather]).to be_an(Array)
    expect(weather[:hourly][0][:weather][0]).to be_a(Hash)
    expect(weather[:hourly][0][:weather][0][:main]).to be_a(String)
    expect(weather[:hourly][0][:weather][0][:icon]).to be_a(String)

    expect(weather[:minutely]).to be_a(NilClass)
  end
end
