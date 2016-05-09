Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :agreements
  resources :tops
  resources :nexus
  resources :users

  root 'agreements#index'

end
