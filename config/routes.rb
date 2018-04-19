Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "categories#index"
  resources :categories

  get "/category/:id", to: "categories#show"

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  resources :attractions, only: [:show, :index] do
    resources :reviews, except: [:new, :show, :index], shallow: true
  end

  

end
 