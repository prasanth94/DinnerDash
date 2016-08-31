class RestaurantsController < ApplicationController
	before_action :authenticate_user!	
  def show
  	@restaurants = Restaurant.all.paginate(page: params[:page])
  end
end
	