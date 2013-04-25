DbcOverflow::Application.routes.draw do

  root :to => "home#index"

  # match "/sessions/new" => "sessions#new", :method => "new", :as => "login"
  # match "/sessions/:id" => "sessions#destroy", :method => "delete", :as => "logout"

  # get "log_out" => "sessions#destroy", :as => "log_out"
  # get "login" => "sessions#new", :as => "login"

  match '/signup',  to: 'users#new'
  match '/login',  to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'
  match '/question', to: 'questions#show'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions
  resources :answers
  resources :comments
  resources :votes

end
