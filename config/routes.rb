Rails.application.routes.draw do
  # Generate all needed rootes from specified modules in User model
  # Override routes for generated controllers
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
