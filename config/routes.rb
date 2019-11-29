Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  resources :users, only: [:edit, :update, :delete] do
    collection do
      get "signup2"
      get "signup3"
    end
  end
end