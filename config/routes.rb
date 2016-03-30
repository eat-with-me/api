Rails.application.routes.draw do
  devise_for :users

  resources :groups, only: [:index] do
    resources :orders, only: [:index, :create]
  end

  root 'home#index'
end
