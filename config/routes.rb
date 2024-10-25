Rails.application.routes.draw do
  get "contacts/new"
  get "contacts/create"
  get "games/game1"
  get "games/game2"
  get "games/game3"
  # Define the route for the welcome index action
  get "welcome/index"

  # Define the root path route ("/") to point to welcome#index
  root "welcome#index"

  # Define routes for posts
  resources :posts  # This creates standard RESTful routes for posts

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
