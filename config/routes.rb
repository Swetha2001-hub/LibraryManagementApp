Rails.application.routes.draw do
  resources :books, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :new, :create]
  resources :borrowings, only: [:index, :new, :create]
  
  root "books#index"
end
