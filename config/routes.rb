Rails.application.routes.draw do
  devise_for :users
  resource :users
  resource :posts

  root :to => 'users#index'

  get '/feed', to: "posts#index"
  get '/home', to: "users#index"
  get '/edit_my_profile', to: "users#edit"
  get '/user/:username', to: 'users#show'



end
