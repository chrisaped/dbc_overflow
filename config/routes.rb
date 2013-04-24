DbcOverflow::Application.routes.draw do

  root :to => "home#index"

  resources :users
  resources :questions
  resources :answers
  resources :comments
  resources :votes

end

# routes created for each above:

    #     votes GET    /votes(.:format)              votes#index
    #           POST   /votes(.:format)              votes#create
    #  new_vote GET    /votes/new(.:format)          votes#new
    # edit_vote GET    /votes/:id/edit(.:format)     votes#edit
    #      vote GET    /votes/:id(.:format)          votes#show
    #           PUT    /votes/:id(.:format)          votes#update
    #           DELETE /votes/:id(.:format)          votes#destroy
