Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#index"

  get "/login", to: "pages#login", as: "login"

  get "/register", to: "pages#register", as: "register"

  get "/generator", to: "pages#generator", as: "generator"

end
