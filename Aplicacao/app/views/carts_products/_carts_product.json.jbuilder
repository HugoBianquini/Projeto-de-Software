json.extract! carts_product, :id, :cart_id, :product_id, :quantity, :created_at, :updated_at
json.url carts_product_url(carts_product, format: :json)
