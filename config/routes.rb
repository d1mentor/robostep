Rails.application.routes.draw do
  devise_for :users
  resource :users

  root :to => 'users#index'

  get '/home', to: "users#index"
  get '/edit_my_profile', to: "users#edit"

end
