Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/users", to: "users#index"
  post "/users", to: "users#index"
  get "/items", to: "items#index"
  post "/items", to: "items#index"
  patch "/items/:id", to: "items#update"
  delete "/items/:id", to: "items#destroy"
  post "/login", to: "users#verify"
end
