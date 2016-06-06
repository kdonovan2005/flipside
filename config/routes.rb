Rails.application.routes.draw do
  resources :issues
  resources :pros
  resources :cons
  resources :users
end
