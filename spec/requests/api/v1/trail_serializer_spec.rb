require 'rails_helper'

RSpec.describe TrailSerializer do
  it "Sends weather forcast data and trail hiking data" do
    get '/api/v1/trails?location=denver,co'
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:data]).to be_a(Hash)
    expect(rsp[:data][:id]).to be_a(NilClass)
    expect(rsp[:data][:type]).to be_a(String)

    expect(rsp[:data][:attributes]).to be_a(Hash)
    expect(rsp[:data][:attributes][:id]).to be_a(NilClass)
    expect(rsp[:data][:attributes][:forecast]).to be_a(Hash)
    expect(rsp[:data][:attributes][:forecast][:summary]).to be_a(String)
    expect(rsp[:data][:attributes][:forecast][:temperature]).to be_a(Numeric)

    expect(rsp[:data][:attributes][:trails]).to be_a(Array)
    expect(rsp[:data][:attributes][:trails][0]).to be_a(Hash)
    expect(rsp[:data][:attributes][:trails][0][:id]).to be_a(NilClass)
    expect(rsp[:data][:attributes][:trails][0][:name]).to be_a(String)
    expect(rsp[:data][:attributes][:trails][0][:summary]).to be_a(String)
    expect(rsp[:data][:attributes][:trails][0][:location]).to be_a(String)
    expect(rsp[:data][:attributes][:trails][0][:distance_to_trail]).to be_a(String)
  end
end
