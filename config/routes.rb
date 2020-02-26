Rails.application.routes.draw do
  resources :categories
  get 'home/index'
  root 'home#index'
  resources :authors
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
