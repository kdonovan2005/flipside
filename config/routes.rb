Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/destroy'

  get 'users/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/failure'

  get 'sessions/destroy'

  resources :issues
  resources :pros
  resources :cons
  resources :users
end
