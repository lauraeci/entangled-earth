json.array!(@accomplishments) do |accomplishment|
  json.extract! accomplishment, :id
  json.url accomplishment_url(accomplishment, format: :json)
end
