Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :agreements
  resources :tops
  resources :nexus
  resources :users

  root 'agreements#index'

  devise_scope :user do
    get '/users/edit', :to => 'users#edit'
  end

end
