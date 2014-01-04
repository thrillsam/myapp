json.array!(@users) do |user|
  json.extract! user, :username, :email, :password_salt, :crypted_password, :persistence_token
  json.url user_url(user, format: :json)
end
