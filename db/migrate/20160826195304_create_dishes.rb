class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.boolean :vegeterian
      t.string :category
      t.string :price
      t.string :image
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
