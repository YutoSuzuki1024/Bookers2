Rails.application.routes.draw do
  # get 'users/edit'
  devise_for :users
  resources :books
  resources :users
  # constraints -> request { request.session[:id].present? } do
  # 	root 'users#show'
  # end
  root 'users#top'
  get 'home/about' => 'home#about'
end
