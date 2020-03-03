Rails.application.routes.draw do
  resources :categories
  resources :books do
    patch :add_author, on: :member
    patch :remove_author, on: :member
    get :add_author_page, on: :member
    get :remove_author_page, on: :member
  end
  get 'home/index'
  root 'home#index'
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
