json.array!(@stocks) do |stock|
  json.extract! stock, :id, :stock, :product_id, :version
  json.url stock_url(stock, format: :json)
end
