class LineItemsController < ApplicationController

  include CurrentCart
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  def create
    dish = Dish.find(params[:dish_id])
    @line_item = @cart.add_product(dish.id)

    respond_to do |format|
      if @line_item.save
        format.html {redirect_to url_for(:controller => :restaurants, :action => :show) }
        format.js{@current_item = @line_item}
        format.json {render action: 'show', status: :created, location: @line_item }
      else
        format.html {render action: 'new'}
        format.json { render json: @line_item.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html {redirect_to line_items_url, notice: 'Line item was successfully destroyed.'}
      format.json {head :no_content}
    end
  end


private
  def set_line_item
    @line_item = LineItem.find(params[:id])
  end

  def line_item_params
     # params.require(:line_item).permit(:quantity)
  end

end



 