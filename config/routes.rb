Rails.application.routes.draw do
  apipie
  devise_for :users

  resources :groups, only: [:index] do
    resources :orders, only: [:index, :create, :show]
    post "/purchasers", to: 'orders#purchasers_create'
  end
  resources :restaurants, only: [:index, :show]

  root 'home#index'
end
