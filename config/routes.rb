Rails.application.routes.draw do
  # スプリントレビュー用ルート
  
  devise_for :users
  get '/mypage/profile', to: 'mypage#profile'
  get '/mypage/user_info_register', to: 'mypage#user_info_register'
  get '/mypage/logout', to: 'mypage#logout'
  # get '/mypage/user_page', to: 'mypage#user_page'
  root to: "products#index"
  resources :products, only: [:index, :new, :create, :show] do
    member do
      get :myproduct
      get :my_product_detail
    end
  end
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
end