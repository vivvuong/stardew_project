class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :photo_image
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.boolean :sale, null: false, default: false

      t.timestamps
    end
  end
end
