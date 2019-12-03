class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    #Product.create (product_params)ユーザーテーブル完成後使用
  end

  # privateユーザーテーブル完成後使用

  # def product_params
  #   params.permit(:name, :price, :text)
  # endユーザーテーブル完成後使用
end