Rails.application.routes.draw do
  resources :users,      only: [:new, :create]
  root                           to: 'homes#show'
  get '/auth/facebook',          as: :facebook_login
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/auth/failure',           to: redirect('/')
  delete '/logout',              to: 'sessions#destroy'
end
