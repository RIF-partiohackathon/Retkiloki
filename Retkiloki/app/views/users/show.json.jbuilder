json.array!(@users) do |user|
  json.extract! @user, :id, :name, :age_group , :phone, :email
#  json.url user_url(user, format; ;json)
end
