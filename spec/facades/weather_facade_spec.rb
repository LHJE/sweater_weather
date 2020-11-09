require 'rails_helper'

RSpec.describe 'Weather Facade' do
  it "It returns forecast poro" do
    lat = 39.738453
    lon = -104.984853

    forecast = WeatherFacade.get_forecast(lat, lon)

    expect(forecast).to be_a(Weather)
    expect(forecast.daily).to be_an(Array)
    expect(forecast.description).to be_a(String)
    expect(forecast.feels_like).to be_a(Numeric)
    expect(forecast.hourly).to be_a(Array)
    expect(forecast.humidity).to be_a(Numeric)
    expect(forecast.icon).to be_a(String)
    expect(forecast.sunrise).to be_a(Time)
    expect(forecast.sunset).to be_a(Time)
    expect(forecast.temp_high).to be_a(Numeric)
    expect(forecast.temp_low).to be_a(Numeric)
    expect(forecast.temperature).to be_a(Numeric)
    expect(forecast.uvi).to be_a(Numeric)
    expect(forecast.visibility).to be_a(Numeric)

    expect(forecast.daily[0]).to be_a(DailyForecast)
    expect(forecast.daily[0].date).to be_a(Time)
    expect(forecast.daily[0].description).to be_a(String)
    expect(forecast.daily[0].dew_point).to be_a(Numeric)
    expect(forecast.daily[0].icon).to be_a(String)
    expect(forecast.daily[0].temp_high).to be_a(Numeric)
    expect(forecast.daily[0].temp_low).to be_a(Numeric)
    expect(forecast.daily[0].temperature).to be_a(Numeric)

    expect(forecast.hourly[0]).to be_a(HourlyForecast)
    expect(forecast.hourly[0].hour).to be_a(Time)
    expect(forecast.hourly[0].icon).to be_a(String)
    expect(forecast.hourly[0].temperature).to be_a(Numeric)
  end
end
