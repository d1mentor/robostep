Rails.application.routes.draw do
  devise_for :users

  root :to => 'users#show'

  get '/home', to: "users#index"

  resource :users

end
