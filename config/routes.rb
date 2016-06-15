Rails.application.routes.draw do
  root to: 'issues#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/auth/twitter/callback', to: "sessions#create", as: 'twitter_signin'
  get '/auth/failure', to: 'sessions#new', as: 'twitter_fail' 

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'


  resources :issues
  resources :pros, only: [:new, :create, :destroy]
  resources :cons, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy, :show]

  get '/users/:id/delete', to: 'users#confirmdestroy', as: 'confirmdestroy_user'
end
