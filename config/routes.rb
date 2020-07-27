Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/edit'
  devise_for :users

  # constraints -> request { request.session[:id].present? } do
  # 	root 'users#show'
  # end

  root 'books#top'
  # root 'users#show'
  
  resources :books
  resources :users, only: [:show, :index]
  get 'home/about' => 'home#about'
end
