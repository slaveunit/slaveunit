class CartsController < ApplicationController

	def show
		@order_items = current_order.order_items # from SHOPPING CART
	end

# STRIPE, instead of generating a controller, I put this block.
	def create
		# Amount in cents
		@amount = amount

		customer = Stripe::Customer.create(
		:email => params[:stripeEmail],
		:source  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
		:customer    => customer.id,
		:amount      => @amount,
		:description => 'Rails Stripe customer',
		:currency    => 'usd'
		)

		rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to new_charge_path
	end
# STRIPE, instead of generating a controller, I put this block.

end