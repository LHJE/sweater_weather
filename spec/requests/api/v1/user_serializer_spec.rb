require 'rails_helper'

RSpec.describe UserSerializer do
  it "Sends user information" do
    json = {
            "email": "whatever@example.com",
            "password": "password",
            "password_confirmation": "password"
          }

    post '/api/v1/users', params: json.to_json
    expect(response).to be_successful

    rsp = JSON.parse(response.body, symbolize_names: :true)

require "pry"; binding.pry

  end
end
