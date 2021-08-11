Rails.application.routes.draw do
  get 'attendance/new'
  get 'attendance/create'
  get 'attendance/show'
  get 'attendance/index'
  get 'events/index'
  get 'events/new'
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
resources :static_pages
resources :users
resources :events 
resources :charges
resources :events do 
  resources :attendances
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
