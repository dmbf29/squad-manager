Rails.application.routes.draw do
  devise_for :users
  root to: 'squads#index'
  resources :squads
  resources :players, except: :index
  resources :squad_places, only: [:edit, :update]
end
