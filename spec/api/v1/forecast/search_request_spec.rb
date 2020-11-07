require 'rails_helper'

RSpec.describe "Weather search" do
  it "can get make forecast call" do
    get '/api/v1/forecast?location=denver,co'
    expect(response).to be_successful
  end
end
