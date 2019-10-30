class CreateImageAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :image_assets do |t|
      t.string :name
      t.string :image
      t.references :tags, null: false, foreign_key: true

      t.timestamps
    end
  end
end
