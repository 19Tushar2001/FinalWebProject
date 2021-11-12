Rails.application.routes.draw do
  get 'plane_search/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'planes/index'
  # get 'planes/show'
  # get 'manufacturers/index'
  # get 'manufacturers/show'
  resources :planes
  resources :manufacturers
  root to: "manufacturers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
