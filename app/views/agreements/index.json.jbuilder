json.array!(@agreements) do |agreement|
  json.extract! agreement, :id, :contract, :category, :banner, :name, :description, :img1, :img2, :img3, :img4, :img5, :address, :phone, :email, :website, :url_map, :facebook, :twitter, :instagram, :contact
  json.url agreement_url(agreement, format: :json)
end
