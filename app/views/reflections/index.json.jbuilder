json.array!(@reflections) do |reflection|
  json.extract! reflection, :id
  json.url reflection_url(reflection, format: :json)
end
