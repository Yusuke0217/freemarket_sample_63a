Rails.application.routes.draw do
  get 'credit/new'
  get 'credit/show'
  # スプリントレビュー用ルート
  
  devise_for :users
  get '/mypage/profile', to: 'mypage#profile'
  get '/mypage/user_info_register', to: 'mypage#user_info_register'
  get '/mypage/logout', to: 'mypage#logout'
  get '/mypage/user_page', to: 'mypage#user_page'
  root to: "products#index"
  resources :products, only: [:index, :new, :create, :show]
  resources :users, only: [:edit, :update, :delete, :create, :show]
    resources :signup, only: [:create] do
      collection do
        post "signup"
        get "signup2"
        get "signup3"
        get "signup4"
        get "signup5"
        get "done"
      end
    end
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end

  end
end