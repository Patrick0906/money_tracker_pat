Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  namespace :api do
    resources :money, only: [:index, :create, :update, :destroy]
  end
  # post /api/money

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
