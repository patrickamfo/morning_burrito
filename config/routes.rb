Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/dashboard", to: "pages#dashboard"
  resources :challenges, only: [:show, :new, :edit]
  resources :users do
    member do
      get "category-preference"
    end
  end
end
