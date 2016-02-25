json.array!(@events) do |event|
  json.extract! event, :id, :eventname, :eventdate, :eventdescription, :eventprice
  json.url event_url(event, format: :json)
end
