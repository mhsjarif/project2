Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "attractions#index"
  resources :attractions

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

end
 