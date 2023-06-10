Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users

  resources :users

  # Defines the root path route ("/")
  root 'top#show'
end
