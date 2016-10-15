class Dish < ActiveRecord::Base
  belongs_to :restaurant
  has_many :line_items


  

end
