Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  apipie

  devise_for :users

  resources :groups, only: [:index, :create] do
    resources :orders, only: [:index, :create, :show]
    post "/purchasers", to: 'orders#purchasers_create'
  end
  resources :restaurants, only: [:index, :show]

  get "/join/:token", to: 'groups#add_user'

  root 'home#index'
end
