Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :profile, only: [:new, :create, :edit, :update]
  resources :products
  resources :cart
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
