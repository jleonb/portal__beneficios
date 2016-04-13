json.array!(@nexus) do |nexu|
  json.extract! nexu, :id, :number, :agreement_contract, :user_contract
  json.url nexu_url(nexu, format: :json)
end
