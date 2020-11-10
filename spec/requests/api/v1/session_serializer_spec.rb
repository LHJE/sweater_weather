require 'rails_helper'

RSpec.describe SessionSerializer do
  before :each do
    @user = User.create(email: 'rt@a.com', password: 'a', password_confirmation: 'a', api_key: "9EjiyN2w8u1fETO20rWVDA==")
  end

  it "Sends user information if the user is able to log in" do
    json = {
            "email": "rt@a.com",
            "password": "a",
          }

    post '/api/v1/sessions', params: json.to_json
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:data]).to be_a(Hash)
    expect(rsp[:data][:id]).to be_a(String)
    expect(rsp[:data][:type]).to eq("user")

    expect(rsp[:data][:attributes]).to be_a(Hash)
    expect(rsp[:data][:attributes][:email]).to be_a(String)
    expect(rsp[:data][:attributes][:api_key]).to be_a(String)
  end

  it "Sends error if the email is not in the system" do
    json = {
            "email": "rasdasdfasdfsdfaft@a.com",
            "password": "a",
          }

    post '/api/v1/sessions', params: json.to_json
    expect(response).to_not be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:error]).to eq("Error: Email or Password Incorrect")
  end

end
