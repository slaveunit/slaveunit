class StaticPagesController < ApplicationController

  # for the CAROUSEL
  def index
    @products = Product.all
    @featured_product = Product.third
  end

  def store
    @products = Product.all
  end

end
