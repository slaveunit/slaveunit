class StaticPagesController < ApplicationController

  # for the CAROUSEL
  def index
    @products = Product.all
    @featured_product = Product.first
  end

end
