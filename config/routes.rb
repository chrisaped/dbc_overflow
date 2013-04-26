DbcOverflow::Application.routes.draw do

  root :to => "home#index"

  match '/signup',  to: 'users#new'
  match '/login',  to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'
  match '/new/vote', to: 'votes#create'

  match '/questions/:id', to: 'questions#show'
  match 'questions', to: 'questions#create', as: 'questions', via: :post
  match 'questions', to: 'questions#new', as: 'questions', via: :get

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :answers
  resources :questions
  resources :comments
  resources :votes

end
