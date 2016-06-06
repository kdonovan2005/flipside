Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: :login
  get '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'

  get 'users/new'

  get 'users/create'

  get 'users/destroy'

  get 'users/show'

  resources :issues
  resources :pros
  resources :cons
  resources :users
end
