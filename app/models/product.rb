class Product < ActiveRecord::Base
	# SHOPPING CART
	has_many :order_items
	default_scope { where(active: true) }
	# SHOPPING CART



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


	

	# PAPERCLIP
	belongs_to :product
	has_attached_file :photo, default_url: "/images/:style/missing.png"
	# PAPERCLIP

	#RATY
	def average_rating
		comments.average(:rating).to_f
	end
	#RATY

	# COMMENTS
	has_many :comments
	# COMMENTS

	#VALIDATION
	validates :name, presence: true
	validates :description, presence: true
	validates :colour, presence: true
	validates :price, presence: true
	validates_attachment :photo, presence: true,
	  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	#VALIDATION

end


