Rails.application.routes.draw do
  resources :categories do
    get :add_book_page, on: :member
    get :remove_book_page, on: :member
    patch :add_book, on: :member
    patch :remove_book, on: :member
  end

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
