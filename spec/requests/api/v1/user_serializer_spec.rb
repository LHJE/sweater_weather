require 'rails_helper'

RSpec.describe UserSerializer do
  before :each do
    @user = User.create(email: 'rt@a.com', password: 'a', password_confirmation: 'a', api_key: "9EjiyN2w8u1fETO20rWVDA==")
  end

  it "Sends user information if the user is able to be created" do
    json = {
            "email": "whatever@example.com",
            "password": "password",
            "password_confirmation": "password"
          }

    post '/api/v1/users', params: json.to_json
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

  it "Does not send user information if the user has a matching email address" do
    json = {
            "email": "rt@a.com",
            "password": "password",
            "password_confirmation": "password"
          }

    post '/api/v1/users', params: json.to_json
    expect(response).to_not be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:error]).to eq("Email has already been taken")
  end

  it "Does not send user information if the user does not have matching passwords" do
    json = {
            "email": "rt@a.com",
            "password": "password",
            "password_confirmation": "ajsdfgajsldhf"
          }

    post '/api/v1/users', params: json.to_json
    expect(response).to_not be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:error]).to eq( "Password confirmation doesn't match Password and Email has already been taken")
  end

  it "Does not send user information if the user does not have matching passwords" do
    json = {
            "email": "rt@a.com",
            "password": "password",
            "password_confirmation": ""
          }

    post '/api/v1/users', params: json.to_json
    expect(response).to_not be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

    expect(rsp).to be_a(Hash)
    expect(rsp[:error]).to eq("Password confirmation doesn't match Password, Password confirmation can't be blank, and Email has already been taken")
  end
end
