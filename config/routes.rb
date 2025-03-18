Rails.application.routes.draw do
  get 'challenge/show'
  get 'challenge/new'
  get 'challenge/edit'
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
  resources :challenges, only: [:show, :new, :edit]
  # get "show", to: "challenge#show"
end
