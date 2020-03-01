Rails.application.routes.draw do
  resources :categories
  resources :books
  get 'home/index'
  root 'home#index'
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
