Rails.application.routes.draw do
  devise_for :users
  root "application#index"
  resources :application
  resources :tasks
  resources :articles
end
