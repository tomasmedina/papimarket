Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :users
  delete 'products/delete', action: :delete, controller: 'products'
  get 'home/index'
  get 'home/timestamp'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
