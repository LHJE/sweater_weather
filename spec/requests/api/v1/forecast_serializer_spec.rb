require 'rails_helper'

RSpec.describe ForecastSerializer do
  it "Sends weather forcast data" do
    get '/api/v1/forecast?location=denver,co'
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:data]).to be_a(Hash)
    expect(rsp[:data][:id]).to be_a(NilClass)
    expect(rsp[:data][:type]).to eq("forecast")
    expect(rsp[:data][:attributes]).to be_a(Hash)
    expect(rsp[:data][:attributes][:current_weather]).to be_a(Hash)
    expect(rsp[:data][:attributes][:current_weather][:datetime]).to be_a(String)
    expect(rsp[:data][:attributes][:current_weather][:sunrise]).to be_a(String)
    expect(rsp[:data][:attributes][:current_weather][:sunset]).to be_a(String)
    expect(rsp[:data][:attributes][:current_weather][:temperature]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:current_weather][:feels_like]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:current_weather][:humidity]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:current_weather][:uvi]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:current_weather][:visibility]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:current_weather][:conditions]).to be_a(String)

    expect(rsp[:data][:attributes][:daily_weather]).to be_a(Array)
    expect(rsp[:data][:attributes][:daily_weather][0]).to be_a(Hash)
    expect(rsp[:data][:attributes][:daily_weather][0][:date]).to be_a(String)
    expect(rsp[:data][:attributes][:daily_weather][0][:sunrise]).to be_a(String)
    expect(rsp[:data][:attributes][:daily_weather][0][:sunset]).to be_a(String)
    expect(rsp[:data][:attributes][:daily_weather][0][:max_temp]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:daily_weather][0][:min_temp]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:daily_weather][0][:conditions]).to be_a(String)

    expect(rsp[:data][:attributes][:hourly_weather]).to be_a(Array)
    expect(rsp[:data][:attributes][:hourly_weather][0]).to be_a(Hash)
    expect(rsp[:data][:attributes][:hourly_weather][0][:hour]).to be_a(String)
    expect(rsp[:data][:attributes][:hourly_weather][0][:temperature]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:hourly_weather][0][:wind_speed]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:hourly_weather][0][:wind_direction]).to be_a(String)
    expect(rsp[:data][:attributes][:hourly_weather][0][:conditions]).to be_a(String)
  end
end
