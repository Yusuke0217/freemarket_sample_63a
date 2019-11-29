class UsersController < ApplicationController

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

end
