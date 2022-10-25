Rails.application.routes.draw do
  devise_for :users
  get '/users/close_account', to: 'users#close_account', as: 'users'

  resources :site

  root to: "site#index"
end
