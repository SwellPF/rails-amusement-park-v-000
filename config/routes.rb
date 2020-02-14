Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'
  get '/signin' => 'sessions#new'
  post '/logout' => 'sessions#destroy'
  post '/signin' => 'sessions#create'
  get '/signup' => 'users#new'
  resources :users
  resources :rides
  resources :attractions
  
end
