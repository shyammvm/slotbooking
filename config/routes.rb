# frozen_string_literal: true

Rails.application.routes.draw do
  # root to: "userhome#index"
  get 'about', to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # for user
  root 'main#index'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  # get "/users", to: "users#index"
  # get "/articles", to: "articles#index"
end
