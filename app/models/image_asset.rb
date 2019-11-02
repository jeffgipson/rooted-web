class ImageAsset < ApplicationRecord
  belongs_to :tags
  has_many_attached :uploads
end
