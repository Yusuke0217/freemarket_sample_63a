class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_from(:facebook)
  end

  def google_oauth2
    callback_from(:google)
  end

  def callback_from(provider) #provider = facebook or google
    @user = User.find_oauth(request.env['omniauth.auth']) #SNS側から来る情報であるauth_hash
    if @user.persisted? #@userがDBにある場合、ログイン状態にする
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
    else #＠userがDBにない場合、新規登録ページにリダイレクトする
      render "signup/signup2"
      # session["devise.#{provider}_data"] = request.env['omniauth.auth'].except("extra")
      # redirect_to signup2_signup_index_path
    end
  end

  def failure #処理失敗時は、ルートパスへ遷移
    redirect_to root_path
  end

end