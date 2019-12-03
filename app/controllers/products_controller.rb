class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    #Product.create (product_params)
  end

  # private

  # def product_params
  #   params.permit(:name, :price, :text)
  # end
end



  