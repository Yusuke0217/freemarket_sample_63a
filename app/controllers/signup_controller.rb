class SignupController < ApplicationController

  def signup2
    @user = User.new # 新規インスタンス作成
  end

  def signup3
    # signup2で入力された値をsessionに保存
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:encrypted_password] = user_params[:encrypted_password]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birth_day] = user_params[:birth_day]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    @user = User.new # 新規インスタンス作成
  end

  def signup4
    session[:phone_number] = user_params[:phone_number]
    @user = User.new # 新規インスタンス作成
  end

  def signup5
    # signup4で入力された値をsessionに保存
    session[:postal_code] = user_params[:postal_code]
    @user = User.new # 新規インスタンス作成
  end

  def signup6 # 完了画面
  end


  def create
    @user = User.new(
      nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
      email: session[:email],
      encrypted_password: session[:encrypted_password],
      # password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_day: session[:birth_day],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month]
    )
    if @user.save
　　　# ログインするための情報を保管
      session[:id] = @user.id
      redirect_to done_signup_index_path
    else
      render 'layouts/signup1'
    end
  end

  def signup6
  end

  private

  def user_params
    params.require(:user).permit(
      :encrypted_password, :email, :nickname,
      :last_name, :first_name, :last_name_kana, :first_name_kana,
      :birth_day, :birth_year, :birth_month
      )
      #  :profile, :phone_number,:prefecture, :city, :address, :postal_code, :building_name)
  end
end
