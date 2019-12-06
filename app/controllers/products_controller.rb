class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new (product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    product = Product.find(params[:id])
    if product.destroy
      redirect_to myproduct_product_path
    else
      render :my_product_detail
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to my_product_detail_product_path
    else
      render :my_product_detail
    end
  end

  def myproduct
    @products = current_user.products
  end

  def my_product_detail
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :condition, :shipping_charge, :shipping_how, :shipping_place, :shipping_date, :price, :text, :image, :category).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_product
    @product = Product.find(params[:id])
  end
  
end