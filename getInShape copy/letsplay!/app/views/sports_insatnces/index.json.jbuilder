json.array!(@sports_insatnces) do |sports_insatnce|
  json.extract! sports_insatnce, :id
  json.url sports_insatnce_url(sports_insatnce, format: :json)
end
