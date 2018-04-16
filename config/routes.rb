Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "attractions#index"
  get "attractions", to: "attractions#index"
  
  get "attractions/:id", to: "attractions#show", as: :attraction

end
 