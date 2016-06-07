Rails.application.routes.draw do
  root to: 'issues#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'


  resources :issues
  resources :pros
  resources :cons
  resources :users
end
