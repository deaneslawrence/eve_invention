json.array!(@blueprint_users) do |blueprint_user|
  json.extract! blueprint_user, :blueprint_id, :user_id, :preferred_decryptor
  json.url blueprint_user_url(blueprint_user, format: :json)
end