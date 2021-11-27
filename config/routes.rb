Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #for user
  #root"books#index"
  root"books#new"
  resources :books
  #root "users#admin_user"
  #resources :users
  #get "/users", to: "users#index"
  # get "/articles", to: "articles#index"
end
