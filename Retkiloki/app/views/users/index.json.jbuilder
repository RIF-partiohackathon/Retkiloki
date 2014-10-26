json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone, :email, :age_group
  json.url user_url(user, format: :json)
end
