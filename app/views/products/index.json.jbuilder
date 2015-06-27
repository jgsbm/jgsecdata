json.array!(@products) do |product|
  json.extract! product, :id, :product_code, :product_name, :price, :pic, :detail, :version
  json.url product_url(product, format: :json)
end
