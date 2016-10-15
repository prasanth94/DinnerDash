class DishesController < ApplicationController

	def show 
		@restaurant = Restaurant.find(params[:restaurant])
		@dishes = @restaurant.dishes.all
		
	
	end

	


end
