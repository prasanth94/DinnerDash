class OrderHistoryController < ApplicationController

  def show
  	@order_history = OrderHistory.where(user_id: current_user.id)
  	
  end
end
