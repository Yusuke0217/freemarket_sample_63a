class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to product_path(params[:product_id])
    else
      render :create
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, product_id: params[:product_id])
  end

  def product_params
    params.require(:product).permit(:name, :condition, :shipping_charge, :shipping_how, :shipping_place, :shipping_date, :price, :text, :image, :category, :status, :comment).merge(user_id: current_user.id)
  end
end
