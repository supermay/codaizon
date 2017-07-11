class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :image
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
