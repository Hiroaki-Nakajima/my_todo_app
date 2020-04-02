Rails.application.routes.draw do
  devise_for :users
  root "application#index"

  namespace :articles do
    resources :searches, only: :index
  end

  resources :application
  resources :tasks
  resources :articles
end
