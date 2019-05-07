Rails.application.routes.draw do
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  get 'orders/new'
  get 'success', to: "orders#create"
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "listings#index"
  
  
  
  
  
  
end
