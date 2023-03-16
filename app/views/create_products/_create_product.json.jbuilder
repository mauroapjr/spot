json.extract! create_product, :id, :label, :description, :image, :quantity, :price, :created_at, :updated_at
json.url create_product_url(create_product, format: :json)
