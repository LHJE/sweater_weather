class Api::V1::UsersController < ApplicationController

  def create

    user_data = JSON.parse(request.raw_post)
    user = User.new(user_data)
    render json: UserSerializer.new(user)
  end

end
