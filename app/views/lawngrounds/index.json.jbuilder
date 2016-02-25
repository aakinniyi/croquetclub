json.array!(@lawngrounds) do |lawnground|
  json.extract! lawnground, :id, :name
  json.url lawnground_url(lawnground, format: :json)
end
