Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"


    get "/attractions" => "attractions#index"
    post "/attractions" => "attractions#create"
    get "/attractions/:id" => "attractions#show"
    patch "/attractions/:id" => "attractions#update"
    delete "/attractions/:id" => "attractions#destroy"

    get "/neighborhoods" => "neighborhoods#index"
    post "/neighborhoods" => "neighborhoods#create"
    get "/neighborhoods/:id" => "neighborhoods#show"
    patch "/neighborhoods/:id" => "neighborhoods#update"
    delete "/neighborhoods/:id" => "neighborhoods#destroy"

    get "/weather" => "neighborhoods#weather"

    get "/votes" => "votes#index"
    patch "/votes" => "votes#create"
    get "/votes/:id" => "votes#show"

    post "/sessions" => "sessions#create"

  end
end
