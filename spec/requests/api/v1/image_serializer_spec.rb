# require 'rails_helper'
#
# RSpec.describe ImageSerializer do
#   it "Sends weather forcast icon" do
#     get '/api/v1/backgrounds?location=denver,co'
#     expect(response).to be_successful
#
#     rsp = JSON.parse(response.body, symbolize_names: :true)
#
#     expect(rsp).to be_a(Hash)
#     expect(rsp[:data]).to be_a(Hash)
#
#     expect(rsp[:data][:id]).to be_a(NilClass)
#     expect(rsp[:data][:type]).to eq("image")
#
#     expect(rsp[:data][:attributes]).to be_a(Hash)
#     expect(rsp[:data][:attributes][:location]).to be_a(String)
#     expect(rsp[:data][:attributes][:image_url]).to be_a(String)
#     expect(rsp[:data][:attributes][:dimensions]).to be_a(Hash)
#     expect(rsp[:data][:attributes][:dimensions][:width]).to be_a(Numeric)
#     expect(rsp[:data][:attributes][:dimensions][:height]).to be_a(Numeric)
#
#     expect(rsp[:data][:attributes][:credit]).to be_a(Hash)
#     expect(rsp[:data][:attributes][:credit][:author]).to be_a(String)
#     expect(rsp[:data][:attributes][:credit][:author_profile]).to be_a(String)
#   end
# end
