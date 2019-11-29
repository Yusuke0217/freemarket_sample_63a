Rails.application.routes.draw do
  # スプリントレビュー用ルート
  get '/mypage/profile', to: 'mypage#profile'
  devise_for :users
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