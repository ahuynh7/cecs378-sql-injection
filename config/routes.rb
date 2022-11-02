Rails.application.routes.draw do
  resources :users

  root 'home#index'
  get "/login", to: "home#login", as: "login"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
