Rails.application.routes.draw do
  apipie
  devise_for :users

  resources :groups, only: [:index] do
    resources :orders, only: [:index, :create]
  end
  resources :restaurants, only: [:index] do
    get "", to: 'restaurants#one'
  end

  root 'home#index'
end
