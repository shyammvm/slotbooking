Rails.application.routes.draw do
  root to: "userhome#index"
  get "about", to: "about#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #for user
  root "users#admin_user"
  resources :users
  #get "/users", to: "users#index"
  # get "/articles", to: "articles#index"
end
