Rails.application.routes.draw do

  root 'members#index'

  resources :members
  resources :teams

  resource :session

  get '/login' => 'sessions#new', as: :login
  get '/logout' => 'sessions#destroy', as: :logout
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
