Rails.application.routes.draw do
  devise_for :users
  get '/users/close_account', to: 'users#close_account', as: 'users'
  get '/users/deposit_account', to: 'users#deposit_account', as: 'users_deposit'
  post '/users/deposit', to: 'users#deposit'

  resources :site

  root to: "site#index"
end
