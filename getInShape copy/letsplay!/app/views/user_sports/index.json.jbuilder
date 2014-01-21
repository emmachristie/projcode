json.array!(@user_sports) do |user_sport|
  json.extract! user_sport, :id, :sport, :user_id, :user_name
  json.url user_sport_url(user_sport, format: :json)
end
