json.extract! produto, :id, :nome, :descricao, :fabricante, :exige_prescricao, :img_url, :categoria_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
