require 'rails_helper'

RSpec.describe 'Weather Facade' do
  it "It returns forecast poro" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherFacade.get_forecast(lat, lon)

    expect(weather).to be_a(Weather)
    expect(weather.current_weather[:conditions]).to be_a(String)
    expect(weather.current_weather[:feels_like]).to be_a(Numeric)
    expect(weather.current_weather[:humidity]).to be_a(Numeric)
    expect(weather.current_weather[:icon]).to be_a(String)
    expect(weather.current_weather[:sunrise]).to be_a(String)
    expect(weather.current_weather[:sunset]).to be_a(String)
    # expect(weather.current_weather[:max_temp]).to be_a(Numeric)
    # expect(weather.current_weather[:min_temp]).to be_a(Numeric)
    expect(weather.current_weather[:temperature]).to be_a(Numeric)
    expect(weather.current_weather[:uvi]).to be_a(Numeric)
    expect(weather.current_weather[:visibility]).to be_a(Numeric)
    expect(weather.daily_weather).to be_an(Array)
    expect(weather.hourly_weather).to be_a(Array)

    expect(weather.daily_weather[0]).to be_a(DailyForecast)
    expect(weather.daily_weather[0].date).to be_a(String)
    expect(weather.daily_weather[0].conditions).to be_a(String)
    expect(weather.daily_weather[0].icon).to be_a(String)
    expect(weather.daily_weather[0].sunrise).to be_a(String)
    expect(weather.daily_weather[0].sunset).to be_a(String)
    expect(weather.daily_weather[0].max_temp).to be_a(Numeric)
    expect(weather.daily_weather[0].min_temp).to be_a(Numeric)
    # expect(weather.daily_weather[0].dew_point).to be_a(Numeric)
    # expect(weather.daily_weather[0].temperature).to be_a(Numeric)

    expect(weather.hourly_weather[0]).to be_a(HourlyForecast)
    expect(weather.hourly_weather[0].hour).to be_a(String)
    expect(weather.hourly_weather[0].icon).to be_a(String)
    expect(weather.hourly_weather[0].temperature).to be_a(Numeric)
  end
end
