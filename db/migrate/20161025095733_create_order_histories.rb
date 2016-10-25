class CreateOrderHistories < ActiveRecord::Migration
  def change
    create_table :order_histories do |t|
      t.integer :quantity
      t.references :Dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
