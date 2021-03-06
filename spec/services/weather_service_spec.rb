require 'rails_helper'

RSpec.describe "Weather Service" do
  it "Can return forecast data for a geolocation" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherService.get_full_weather(lat, lon)

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

  it "It returns current forecast" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherService.get_current_weather(lat, lon)

    expect(weather).to be_a(Hash)
    expect(weather[:dt]).to be_a(Numeric)
    expect(weather[:sunrise]).to be_a(Numeric)
    expect(weather[:sunset]).to be_a(Numeric)
    expect(weather[:temp]).to be_a(Numeric)
    expect(weather[:feels_like]).to be_a(Numeric)
    expect(weather[:pressure]).to be_a(Numeric)
    expect(weather[:humidity]).to be_a(Numeric)
    expect(weather[:dew_point]).to be_a(Numeric)
    expect(weather[:uvi]).to be_a(Numeric)
    expect(weather[:clouds]).to be_a(Numeric)
    expect(weather[:visibility]).to be_a(Numeric)
    expect(weather[:wind_speed]).to be_a(Numeric)
    expect(weather[:wind_deg]).to be_a(Numeric)
    expect(weather[:weather]).to be_a(Array)
    expect(weather[:weather][0]).to be_a(Hash)
    expect(weather[:weather][0][:id]).to be_a(Numeric)
    expect(weather[:weather][0][:main]).to be_a(String)
    expect(weather[:weather][0][:description]).to be_a(String)
    expect(weather[:weather][0][:icon]).to be_a(String)

    expect(weather[:minutely]).to be_a(NilClass)
    expect(weather[:hourly]).to be_a(NilClass)
  end

  it "It returns hourly forecast" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherService.get_hourly_weather(lat, lon)

    expect(weather).to be_a(Hash)
    expect(weather[:lat]).to be_a(Numeric)
    expect(weather[:lon]).to be_a(Numeric)
    expect(weather[:timezone]).to be_a(String)
    expect(weather[:timezone_offset]).to be_a(Numeric)

    expect(weather[:hourly]).to be_a(Array)
    expect(weather[:hourly].count).to eq(48)
    expect(weather[:hourly][0]).to be_a(Hash)
    expect(weather[:hourly][0][:dt]).to be_a(Numeric)
    expect(weather[:hourly][0][:temp]).to be_a(Numeric)
    expect(weather[:hourly][0][:feels_like]).to be_a(Numeric)
    expect(weather[:hourly][0][:pressure]).to be_a(Numeric)
    expect(weather[:hourly][0][:humidity]).to be_a(Numeric)
    expect(weather[:hourly][0][:dew_point]).to be_a(Numeric)
    expect(weather[:hourly][0][:clouds]).to be_a(Numeric)
    expect(weather[:hourly][0][:visibility]).to be_a(Numeric)
    expect(weather[:hourly][0][:wind_speed]).to be_a(Numeric)
    expect(weather[:hourly][0][:wind_deg]).to be_a(Numeric)
    expect(weather[:hourly][0][:pop]).to be_a(Numeric)

    expect(weather[:hourly][0][:weather]).to be_a(Array)
    expect(weather[:hourly][0][:weather][0]).to be_a(Hash)
    expect(weather[:hourly][0][:weather][0][:id]).to be_a(Numeric)
    expect(weather[:hourly][0][:weather][0][:main]).to be_a(String)
    expect(weather[:hourly][0][:weather][0][:description]).to be_a(String)
    expect(weather[:hourly][0][:weather][0][:icon]).to be_a(String)

    expect(weather[:minutely]).to be_a(NilClass)
    expect(weather[:daily]).to be_a(NilClass)
    expect(weather[:current]).to be_a(NilClass)
  end
end
