class StaticPagesController < ApplicationController
  def index
  end

  def index
  	@featured_product = Product.first
  end

end
