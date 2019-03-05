Rails.application.routes.draw do
  get 'squad_places/edit'
  devise_for :users
  root to: 'squads#index'
  resources :squads do
    resources :players, only: [:new, :create, :edit, :update]
    resources :squad_rows, only: [:new, :create, :edit, :update]
  end
  resources :players, only: [:delete]
  resources :squad_places, only: [:edit, :update] do
  end
end
