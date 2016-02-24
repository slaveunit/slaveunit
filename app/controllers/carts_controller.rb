class CartsController < ApplicationController

	def show



			# STRIPE copied from models > order_item to make price button on Stripe match cart.
			  def unit_price
			    if persisted?
			      self[:unit_price]
			    else
			      product.price
			    end
			  end

			  def total_price
			    unit_price * quantity
			  end
			# STRIPE copied from models > order_item to make price button on Stripe match cart.



  
		@order_items = current_order.order_items
	end

end