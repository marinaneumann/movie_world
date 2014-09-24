Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'movies#index'
  resources :users, :only => [ :index, :new, :create]
  resources :sessions, :only => [:new, :create, :destroy, :show]
  resources :movies do
  	resources :votes, :only => [:index, :create]
  end
  resources :movies, :only => [:index, :create, :new, :destroy, :show] 
  resources :votes, :only => [:index, :create] 
end
