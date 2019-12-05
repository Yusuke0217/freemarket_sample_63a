class UsersController < ApplicationController
  before_action :move_to_index
  
  def index
    @products = current_user.products
  end

  def create
  end
  
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
  end
  
  def edit
  end
  
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def delete
  end

  private

  def user_params
    params.require(:user).permit(:password, :email, :nickname, :profile, :phone_number, :prefecture, :city, :address, :postal_code, :building_name)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
