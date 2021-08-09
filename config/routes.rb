Rails.application.routes.draw do
  get "/about" => "about#index"
  post "/about" => "about#create"
  patch "/about" => "about#update"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  patch "/favorites/:id" => "favorites#update"

  get "/goals" => "goals#index"
  post "/goals" => "goals#create"
  patch "/goals/:id" => "goals#update"

  post "/sessions" => "sessions#create"

  get "/users" => "users#index"
  post "/users" => "users#create"
end
