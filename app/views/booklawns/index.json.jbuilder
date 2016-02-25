json.array!(@booklawns) do |booklawn|
  json.extract! booklawn, :id, :availability, :lawnname, :starttime, :endtime
  json.url booklawn_url(booklawn, format: :json)
end
