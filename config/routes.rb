Rails.application.routes.draw do
  devise_for :users
root 'products#index'
resources :ptroducts, only: [:index, :show]
end
