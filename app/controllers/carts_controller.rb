class CartsController < ApplicationController



	def show
		@order_items = current_order.order_items # from SHOPPING CART
		




			# STRIPE CHECKOUT

			@unit_price = product.price
			@total_price = unit_price * quantity


			@current_user ||= User.find(session[:user_id])
			charge = Stripe::Charge.create(
				:customer    => 'current_user',
				:amount      => 'total_price',
				:currency    => 'usd'
			)

			rescue Stripe::CardError => e
			flash[:error] = e.message
			redirect_to new_charge_path
			
			# STRIPE CHECKOUT

	end

end