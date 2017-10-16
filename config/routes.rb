Rails.application.routes.draw do
  resources :business
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/business/', to: 'yelp_model#index'
  
  
end
 