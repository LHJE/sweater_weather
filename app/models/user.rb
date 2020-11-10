class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :password, presence: { require: true }
  validates :password_confirmation, presence: { require: true }
  validates :api_key, confirmation: true, unless: -> { api_key.blank? }


end
