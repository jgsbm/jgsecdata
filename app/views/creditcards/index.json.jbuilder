json.array!(@creditcards) do |creditcard|
  json.extract! creditcard, :id, :creditno, :customer_id, :version
  json.url creditcard_url(creditcard, format: :json)
end
