Rails.application.routes.draw do
  devise_for :users
  patch '/users/:id', to: 'users#close_account', as: 'users'

  resources :site

  root to: "site#index"
end
