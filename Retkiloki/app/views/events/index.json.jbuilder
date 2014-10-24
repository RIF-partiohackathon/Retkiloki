json.array!(@events) do |event|
  json.extract! event, :id, :startdate, :enddate, :attendees
  json.url event_url(event, format: :json)
end
