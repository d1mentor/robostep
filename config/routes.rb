Rails.application.routes.draw do
  get 'comments/show'
  get 'comments/index'
  get 'comments/new'
  get 'comments/create'
  get 'comments/destroy'
  devise_for :users
  resource :users
  resource :posts

  root :to => 'users#index'

  get '/feed', to: "posts#index"
  get '/home', to: "users#index"
  get '/edit_my_profile', to: "users#edit"
  get '/user/:username', to: 'users#show'
  get '/post/:id', to: 'posts#show'

end
