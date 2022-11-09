json.extract! supplier, :id, :name, :cnpj, :address_id, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
