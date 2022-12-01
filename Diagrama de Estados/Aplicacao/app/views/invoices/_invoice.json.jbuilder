json.extract! invoice, :id, :supplier_id, :hash, :emission, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
