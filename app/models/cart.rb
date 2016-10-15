class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, dependent: :destroy

def add_product(dish_id)
    current_item = line_items.find_by(dish_id: dish_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(dish_id: dish_id,quantity: 1)
    end
    current_item
  end

    
end
