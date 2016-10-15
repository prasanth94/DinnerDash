module CurrentCart
  extend ActiveSupport::Concern

  private

    def set_cart 
      @cart = Cart.find(session[:cart_id]) || Cart.where(user_id: current_user.id)
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create(user: current_user)
      session[:cart_id] = @cart.id
    end
end