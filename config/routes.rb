Rails.application.routes.draw do
  get 'credit/new'
  get 'credit/show'

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
      # get :purchase
      post :purchase
      patch :purchase
      get :done
    end
    collection do
      post :search
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
        post "done"
      end
    end

    post   '/like/:product_id' => 'likes#like',   as: 'like'
    delete '/like/:product_id' => 'likes#unlike', as: 'unlike'


  resources :card, only: [:new, :show, :edit, :update, :destroy] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

end