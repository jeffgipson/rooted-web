json.extract! image_asset, :id, :name, :description, :approval, :category, :created_at, :updated_at
json.url image_asset_url(image_asset, format: :json)
