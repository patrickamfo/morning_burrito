Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
  get "/dashboard", to: "pages#dashboard"
  get "/daily-challenge", to: "pages#daily_challenge"
  resources :user_challenges, only: [:index, :show, :create, :edit, :update]

  resources :challenges, only: [:show, :new, :edit] do
    resources :user_challenges, only: [:create]
  end

  get "completed_challenges/:id", to: "user_challenges#completed"

  resources :users do
    member do
      get "category-preference"
    end
  end
end
