Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  get 'users/new'
  get 'users/create'
  get 'users/index'
  get 'users/destroy'
  get 'users/update'
  get 'users/show'
  root 'events#index'
  get 'static_pages/secret' 
resources :users
resources :events 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
