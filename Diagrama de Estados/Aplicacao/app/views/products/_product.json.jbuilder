json.extract! product, :id, :name, :description, :manufacturer, :prescribable, :img_url, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
