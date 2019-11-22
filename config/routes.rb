Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  resources :products, only: [:index ,:show, :new, :create, :destroy] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:edit, :update, :destroy]
end
