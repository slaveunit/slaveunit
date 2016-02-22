class CartsController < ApplicationController

  def show
  	@order_items = current_order.order_items

# STRIPE SO DATA-AMOUNT IN PARTIAL WILL DISPLAY TOTAL PRICE
	@order_item = current_order.order_items.find(params[:id])
# STRIPE SO DATA-AMOUNT IN PARTIAL WILL DISPLAY TOTAL PRICE

  end

end