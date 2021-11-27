# frozen_string_literal: true

Rails.application.routes.draw do
  # root to: "userhome#index"
  get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #for user
  #root"books#index"
  # root"books#new"
  resources :books
  #root "users#admin_user"
  #resources :users
  #get "/users", to: "users#index"
  # for user
  root 'main#index'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  resources :venues
  # get "/users", to: "users#index"
  # get "/articles", to: "articles#index"
end
