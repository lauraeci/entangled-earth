json.array!(@retrospectives) do |retrospective|
  json.extract! retrospective, :id
  json.url retrospective_url(retrospective, format: :json)
end
