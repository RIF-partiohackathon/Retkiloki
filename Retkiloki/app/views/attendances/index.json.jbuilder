json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :startdate, :enddate
  json.url attendance_url(attendance, format: :json)
end
