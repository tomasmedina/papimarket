class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.references :user
      t.references :category
      t.integer :stock
      t.date :expiration_date
      t.string :image

      t.timestamps
    end
  end
end
