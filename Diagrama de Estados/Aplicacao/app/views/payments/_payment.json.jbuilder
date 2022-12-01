json.extract! payment, :id, :type, :value, :order_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
