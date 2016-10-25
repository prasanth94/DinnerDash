class AddUserToOrderHistory < ActiveRecord::Migration
  def change
    add_reference :order_histories, :user, index: true, foreign_key: true
  end
end
