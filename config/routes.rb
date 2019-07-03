Rails.application.routes.draw do
  resources :products
  root 'home#index'

  resources :users
  resources :products
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#create', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'empresta', to: 'products#index', as: 'empresta'

end
