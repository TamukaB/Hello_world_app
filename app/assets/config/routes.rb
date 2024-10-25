Rails.application.routes.draw do
  # Set the root of your application
  root 'pages#home'

  # Define routes for each game
  get 'game1', to: 'games#game1'
  get 'game2', to: 'games#game2'
  get 'game3', to: 'games#game3'

  # Route for contact form submissions
  resources :contacts, only: [:create]  # This adds a POST route for the contact form

  # Other routes
end
