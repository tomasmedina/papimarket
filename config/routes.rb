Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :users
  get 'home/index'
  get 'home/timestamp'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
