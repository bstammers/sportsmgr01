json.array!(@divisions) do |division|
  json.extract! division, :id, :divname
  json.url division_url(division, format: :json)
end
