Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #show home page 
  root "pages#index"
  #show login page
  get "/login", to: "pages#login", as: "login"
  #show register page
  get "/register", to: "pages#register", as: "register"
  #show generator page
  get "/generator", to: "pages#generator", as: "generator"

end
