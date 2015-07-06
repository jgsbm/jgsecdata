json.array!(@histories) do |history|
  json.extract! history, :id, :customer_id, :product_id, :creditcard_id, :amount
  json.url history_url(history, format: :json)
end
