class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :password, :password_confirmation
end
