Rails.application.routes.draw do
  root to: 'products#index'

  devise_for :users

  resources :profile, only: [:new, :create, :edit, :update]
  resources :products
  resources :cart

  resources :product do
    resources :orders
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
