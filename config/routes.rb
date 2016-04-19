Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'restaurants/index'

  root to: 'restaurants#index'
  devise_for :users
  resources :users
end
