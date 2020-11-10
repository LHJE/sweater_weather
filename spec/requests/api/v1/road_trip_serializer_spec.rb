require 'rails_helper'

RSpec.describe RoadTripSerializer do
  before :each do
    @user = User.create(email: 'rt@a.com', password: 'a', password_confirmation: 'a', api_key: "9EjiyN2w8u1fETO20rWVDA==")
  end

  it "Sends user information if the user is able to be created" do
    json = {
              "origin": "Denver,CO",
              "destination": "Pueblo,CO",
              "api_key": "afds"
            }

    post '/api/v1/road_trip', params: json.to_json
    expect(response).to_not be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:error]).to eq("API Key Not In Our System")
  end

  it "Sends user information if the user is able to be created" do
    json = {
              "origin": "Denver,CO",
              "destination": "Pueblo,CO",
              "api_key": "9EjiyN2w8u1fETO20rWVDA=="
            }

    post '/api/v1/road_trip', params: json.to_json
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:data]).to be_a(Hash)
    expect(rsp[:data][:id]).to be_a(NilClass)
    expect(rsp[:data][:type]).to eq("roadtrip")

    expect(rsp[:data][:attributes]).to be_a(Hash)
    expect(rsp[:data][:attributes][:start_city]).to be_a(String)
    expect(rsp[:data][:attributes][:end_city]).to be_a(String)
    expect(rsp[:data][:attributes][:travel_time]).to be_a(String)

    expect(rsp[:data][:attributes][:weather_at_eta]).to be_a(Hash)
    expect(rsp[:data][:attributes][:weather_at_eta][:temperature]).to be_a(Numeric)
    expect(rsp[:data][:attributes][:weather_at_eta][:conditions]).to be_a(String)
  end

end
