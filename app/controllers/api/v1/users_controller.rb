class Api::V1::UsersController < ApplicationController

  def create
    user_params = JSON.parse(request.raw_post, symbolize_names: true)
    user = User.new(user_params)
    user.api_key = SecureRandom.base64(16)
    if user.save
      user.save
      render json: UserSerializer.new(user), status: 201
    else
      render json: {error: user.errors.full_messages.to_sentence} , status: 400
    end
  end

  def login
    user_params = JSON.parse(request.raw_post, symbolize_names: true)
    user = User.where(email: user_params[:email]).first
    
    require "pry"; binding.pry
  end
end
