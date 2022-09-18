json.extract! product, :id, :description, :ativo, :preco, :created_at, :updated_at
json.url product_url(product, format: :json)
