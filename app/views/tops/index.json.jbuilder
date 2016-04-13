json.array!(@tops) do |top|
  json.extract! top, :id, :name, :banner, :description, :contact, :phone, :email
  json.url top_url(top, format: :json)
end
