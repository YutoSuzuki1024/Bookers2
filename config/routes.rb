Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/edit'
  devise_for :users
  root to: 'books#top'
  resources :books
  resources :users, only: [:show]
  get 'home/about' => 'home#about'
end
