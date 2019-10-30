json.extract! image_asset, :id, :name, :image, :tags_id, :created_at, :updated_at
json.url image_asset_url(image_asset, format: :json)
