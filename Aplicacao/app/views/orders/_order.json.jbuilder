json.extract! order, :id, :status, :cancel_motivation, :track_code, :created_at, :updated_at
json.url order_url(order, format: :json)
