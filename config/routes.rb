Rails.application.routes.draw do
  resources :users

  root 'home#index'
  get "/login", to: "home#login", as: "login"
  get "/login_success", to: "home#login_success", as: "login_success"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
