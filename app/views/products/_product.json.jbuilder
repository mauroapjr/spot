json.extract! product, :id, :label, :description, :image, :quantity, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
