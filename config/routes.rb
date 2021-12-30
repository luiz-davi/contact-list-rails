Rails.application.routes.draw do

  # static routes
  root to: 'static_pages#index'
  get 'contato' => 'static_pages#contato'
  get 'sobre' => 'static_pages#sobre'
  
  # sessions routes
  get 'entrar' => 'sessions#new'
  post 'entrar' => 'sessions#create'
  delete 'sair' => 'sessions#destroy'

  # resources
  resources :contacts
  resources :users, only: [:new, :create, :show]
end
