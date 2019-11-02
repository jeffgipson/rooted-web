class CreateImageAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :image_assets do |t|
      t.string :name
      t.text :description
      t.string :approval
      t.string :category

      t.timestamps
    end
  end
end
