json.array!(@sport_instances) do |sport_instance|
  json.extract! sport_instance, :id
  json.url sport_instance_url(sport_instance, format: :json)
end
