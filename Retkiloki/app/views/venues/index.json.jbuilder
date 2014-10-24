json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address, :owner
  json.url venue_url(venue, format: :json)
end
