Rails.application.routes.draw do
  get 'comments_controller/create'

  get 'comments_controller/destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'restaurants/index'
  resources :restaurants

  root to: 'restaurants#index'
  devise_for :users
  resources :users
  resources :comments, only: [:create, :destroy]
end
