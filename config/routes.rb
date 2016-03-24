Rails.application.routes.draw do
  get 'restaurants/index'

  mount Upmin::Engine => '/admin'
  root to: 'restaurants#index'
  devise_for :users
  resources :users
end
