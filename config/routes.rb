Rails.application.routes.draw do
  devise_for :users
root 'products#index'
resources :products, only: [:index, :show]

resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
