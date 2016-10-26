class AddOrderToOrderHistory < ActiveRecord::Migration
  def change
    add_reference :order_histories, :Order, index: true, foreign_key: true
  end
end
