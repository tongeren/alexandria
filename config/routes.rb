Rails.application.routes.draw do
  # Generate all needed rootes from specified modules in User model
  devise_for :users

  root to: 'pages#home'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
