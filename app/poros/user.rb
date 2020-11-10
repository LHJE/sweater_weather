class User
  attr_reader :id,
              :email,
              :password,
              :password_confirmation

  def initialize(email, password, password_confirmation)
    @email = email
    @password = password
    @password_confirmation = password_confirmation
  end
end
