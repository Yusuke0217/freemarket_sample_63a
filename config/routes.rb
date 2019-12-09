Rails.application.routes.draw do
  get 'credit/new'
  get 'credit/show'
  # スプリントレビュー用ルート

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # get '/mypage/profile', to: 'mypage#profile'
  # get '/mypage/user_info_register', to: 'mypage#user_info_register'
  # get '/mypage/logout', to: 'mypage#logout'
  root to: "products#index"  
  resources :products do
    member do
      get :myproduct
      get :my_product_detail
      get :pay_confirm
      get :purchase
      post :purchase
      get :done
    end
  end

  resources :users, only: [:edit, :update, :delete, :create, :show] do
    member do
      get :profile
      get :user_info_register
      get :user_page
      get :logout
    end
  end
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
  resources :card, only: [:new, :show, :edit, :update, :destroy] do
    member do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

end