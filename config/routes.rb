Rails.application.routes.draw do
  get 'challenge/index'
  get 'challenge/show'
  get 'challenge/new'
  get 'challenge/edit'
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
  resources :challenges, only: [:index, :show, :new, :edit]
  # get "show", to: "challenge#show"
end
