class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(params[:email], params[:password], params[:password_confirmation])
  require "pry"; binding.pry
  end

end
