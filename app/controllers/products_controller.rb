class ProductsController < ApplicationController

  require 'payjp'

  before_action :move_to_index, except: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

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
    if @product.destroy
      redirect_to myproduct_product_path if user_signed_in? && current_user.id == @product.user_id
    else
      render :my_product_detail
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to my_product_detail_product_path if user_signed_in? && current_user.id == @product.user_id
    else
      render :edit
    end
  end

  def myproduct
    @products = current_user.products
  end

  def my_product_detail
    @product = Product.find(params[:id])
  end

  def pay_confirm
    @product = Product.find(params[:id])
  end

  def purchase
    card = Card.find(user_id: current_user.id).first
    product = Product.find(params[:id])
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    Payjp::Charge.create(
      amount: product.price,
      card: params['payjp-token'],
      currency: 'jpy',
      customer: @card.customer_id
    )
  end

  private

  def product_params
    params.require(:product).permit(:name, :condition, :shipping_charge, :shipping_how, :shipping_place, :shipping_date, :price, :text, :image, :category, :status).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_product
    @product = Product.find(params[:id])
  end

end