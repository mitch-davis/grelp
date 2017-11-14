Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'splash#index'
  get '/home/', to: 'home#index'
  get '/businesses/', to: 'yelp#index'
  get '/deals/', to: 'deals#index'
  get '/restaurant/', to: 'restaurant#index'
  
  resources :deals
  post "/deals/new"    => "deals#new"

end
