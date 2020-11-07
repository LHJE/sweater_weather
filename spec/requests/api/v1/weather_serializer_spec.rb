require 'rails_helper'

RSpec.describe WeatherSerializer do
  it "Sends weather forcast data" do
    get '/api/v1/forecast?location=denver,co'
    expect(response).to be_successful
    
    rsp = JSON.parse(response.body, symbolize_names: :true)
  end
end
