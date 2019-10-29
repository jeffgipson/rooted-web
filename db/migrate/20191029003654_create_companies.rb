class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :Facebook_URL
      t.string :LinkedIn_URL
      t.string :Google_A_ID
      t.string :Instagram_URL
      t.string :Twitter_URL

      t.timestamps
    end
  end
end
