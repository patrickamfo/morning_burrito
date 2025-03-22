Rails.application.routes.draw do

  get 'user_challenges/new'
  get 'user_challenges/create'

  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
  get "/dashboard", to: "pages#dashboard"
  resources :user_challenges, only: [:index, :show]

  resources :challenges, only: [:show, :new, :edit] do
    resources :user_challenges, only: [:new, :create]
  end

  resources :users do
    member do
      get "category-preference"
    end
  end
end
