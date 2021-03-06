Rails.application.routes.draw do
  devise_for :users
root 'products#index'
  get 'contact', to: 'pages#contact', as: :contact
  get 'livraison', to: 'pages#livraison', as: :livraison
  get 'user', to: 'pages#user', as: :user
resources :products, only: [:index, :show]

resources :orders, only: [:create, :show] do
    resources :payments, only: :new
  end
end
