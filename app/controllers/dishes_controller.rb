class DishesController < ApplicationController
	include CurrentCart
	before_action :set_cart

	def show 
		@restaurant = Restaurant.find(params[:restaurant])
		@dishes = @restaurant.dishes.all
		@cart
		
	
	end

	def veggie
		format.js{ }
	end

	


end
