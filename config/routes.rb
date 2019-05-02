Rails.application.routes.draw do
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  get 'orders/new'
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "listings#index"

  # Connor routes  
  
  
  
  
  
  
  
  
  # Raj routes


  
  
  
  
  
  
  
  # Matthew routes
  
  
  
  
  
  
  
  
end
