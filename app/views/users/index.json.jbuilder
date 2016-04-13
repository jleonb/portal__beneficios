json.array!(@users) do |user|
  json.extract! user, :id, :contract, :nexus, :pid, :name, :phone, :company
  json.url user_url(user, format: :json)
end
