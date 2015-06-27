json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_name, :address, :tel, :hashed_password, :email, :version
  json.url customer_url(customer, format: :json)
end
