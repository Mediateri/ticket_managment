Rails.application.routes.draw do
  resources :tickets
  resources :cars
  resources :schedules
  resources :stops
  resources :routes
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
end
