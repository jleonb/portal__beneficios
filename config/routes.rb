Rails.application.routes.draw do
  devise_for :admins
  resources :agreements
  resources :tops
  resources :nexus
  resources :users

  root 'agreements#index'

end
