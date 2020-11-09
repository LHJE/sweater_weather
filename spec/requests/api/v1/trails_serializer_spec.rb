require 'rails_helper'

RSpec.describe TrailsSerializer do
  it "Sends weather forcast data and trail hiking data" do
    get '/api/v1/trails?location=denver,co'
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
  end
end
