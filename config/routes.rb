Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  namespace :api do
    resources :wishilists, only: [:create, :destroy] 
  end
end
