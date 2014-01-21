json.array!(@dummy_users) do |dummy_user|
  json.extract! dummy_user, :id, :name, :email
  json.url dummy_user_url(dummy_user, format: :json)
end
