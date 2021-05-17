Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  
  resources :members_only_articles, only: [:index, :show]

  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
