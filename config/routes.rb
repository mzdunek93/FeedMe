Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'restaurants/index'
  resources :restaurants

  root to: 'restaurants#index'
  devise_for :users
  resources :users
end
