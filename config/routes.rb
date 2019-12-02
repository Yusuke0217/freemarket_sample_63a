Rails.application.routes.draw do
  # スプリントレビュー用ルート
  
  devise_for :users
  get '/mypage/profile', to: 'mypage#profile'
  get '/mypage/user_info_register', to: 'mypage#user_info_register'
  get '/mypage/logout', to: 'mypage#logout'
  get '/mypage/user_page', to: 'mypage#user_page'
  root to: "home#top"
  resources :users, only: [:edit, :update, :delete]
    resources :signup do
      collection do
        get "signup2"
        get "signup3"
        get "signup4"
        get "signup5"
        get "signup6"
      end
    end
end