json.extract! stock_product, :id, :product_id, :batch, :fabrication, :validity, :quantity, :invoice_id, :created_at, :updated_at
json.url stock_product_url(stock_product, format: :json)
