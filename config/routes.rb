Rails.application.routes.draw do
  # get "/about" => "abouts#index"
  post "/about" => "abouts#create"
  # patch "/about" => "abouts#update"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  # patch "/favorites/:id" => "favorites#update"

  # get "/goals" => "goals#index"
  post "/goals" => "goals#create"
  # patch "/goals/:id" => "goals#update"

  post "/sessions" => "sessions#create"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
end
