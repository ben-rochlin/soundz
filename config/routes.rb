Rails.application.routes.draw do
  resources :user_sounds
  resources :users
  resources :sounds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  

  #show home page 
  root "pages#index"
  #show login page
  get "/login", to: "pages#login", as: "login"
  #show register page
  get "/register", to: "pages#register", as: "register"
  #show generator page
  get "/generator", to: "pages#generator", as: "generator"
  #show user page
  # get "/user", to: "pages#user", as: "user"
  #registration form complete
  # post "/user", to: "pages#new_user" 


end
