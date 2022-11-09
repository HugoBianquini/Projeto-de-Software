json.extract! cart, :id, :client_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
