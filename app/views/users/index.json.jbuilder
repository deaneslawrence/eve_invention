json.array!(@users) do |user|
  json.extract! user, :eve_key, :email
  json.url user_url(user, format: :json)
end