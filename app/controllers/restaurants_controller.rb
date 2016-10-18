class RestaurantsController < ApplicationController
	before_action :authenticate_user!	
	include CurrentCart
	before_action :set_cart

  def show
  	@restaurants = Restaurant.all.paginate(page: params[:page])
  end

  
end
	