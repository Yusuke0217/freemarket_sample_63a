class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new (product_params)
    @product.save
    redirect_to root_path
    # if @product.save
    #   redirect_to root_path, notice: 'OK'
    # else
    #   render :new
    # end
  end

  private

  def product_params
    params.require(:product).permit(:name, :condition, :shipping_charge, :shipping_how, :shipping_place, :shipping_date, :price, :text)
  end
end