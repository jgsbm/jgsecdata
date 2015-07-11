json.array!(@reviews) do |review|
  json.extract! review, :id, :evaluation, :comment, :product_code, :customer_id, :version
  json.url review_url(review, format: :json)
end
