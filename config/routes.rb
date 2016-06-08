Rails.application.routes.draw do
  root to: 'issues#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'


  resources :issues, only: [:index, :create, :new, :destroy, :show, :update]
  resources :pros, only: [:new, :create, :destroy]
  resources :cons, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy, :shower]

  get '/users/:id/delete', to: 'users#confirmdestroy', as: 'confirmdestroy_user'
end
