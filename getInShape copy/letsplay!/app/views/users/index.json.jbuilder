json.array!(@users) do |user|
  json.extract! user, :id, :FirstName, :LastName, :Username, :Password, :Sports, :Location, :Longitude, :Latitude, :SelfDescription
  json.url user_url(user, format: :json)
end
