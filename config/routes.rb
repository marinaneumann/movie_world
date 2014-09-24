Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'movies#index'
  resources :users
  resources :sessions
  resources :movies do
  	resources :votes
  end
  resources :votes
end
