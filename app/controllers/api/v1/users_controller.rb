class Api::V1::UsersController < ApplicationController

  def create
    user_params = JSON.parse(request.raw_post, symbolize_names: true)
    user = User.create!(user_params)
    user.api_key = SecureRandom.base64(16)
    user.save
    require "pry"; binding.pry
    render json: UserSerializer.new(user), status: 201
  end
end
