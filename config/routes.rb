Rails.application.routes.draw do
  get 'orders/new'
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "listings#index"
end
