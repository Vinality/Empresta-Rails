Rails.application.routes.draw do
  resources :products
  root 'home#index'

  resources :users
  resources :products
  resources :emprestimo
  resources :sessions, only: [:new, :create, :destroy]

  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#create', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'emprestar', to: 'products#new', as: 'emprestar'
  get 'empresta', to: 'products#index', as: 'empresta'
  get 'empresta_produto', to: 'emprestimo#create', as: 'empresta_produto'

end
