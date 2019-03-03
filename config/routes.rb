Rails.application.routes.draw do
  devise_for :users
  root to: 'squads#index'
  resources :squads
  resources :players, only: [:edit, :update, :delete]
  resources :squad_places, only: [:edit, :update] do
    resources :players, only: [:new, :create]
  end
end
