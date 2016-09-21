Rails.application.routes.draw do
  resources :colleges,   only: [:index, :show]
  resources :users,      only: [:new, :create, :edit, :update]
  root                           to: 'homes#show'
  get '/auth/facebook',          as: :facebook_login
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/auth/failure',           to: redirect('/')
  delete '/logout',              to: 'sessions#destroy'
  get '/welcome',                to: 'welcome#edit'
  get '/enrollment_preference',  to: 'enrollment_preference#show'
  get '/in_state_max',           to: 'in_state_max#show'
  get '/out_of_state_max',       to: 'out_of_state_max#show'
  get '/act',                    to: 'act#show'
  post '/affiliation',           to: 'affiliation#show'
  get '/grad_rate',              to: 'grad_rate#show'
  get '/dashboard',              to: 'dashboard#show'
end
