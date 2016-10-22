class LineItem < ActiveRecord::Base
	belongs_to :dish
	belongs_to :cart
	belongs_to :order

	 def total_price
    dish.price.to_i * quantity
  end

end
