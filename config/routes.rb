Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'plane_search/index'=> 'plane_search#index', :as=>'search_page'
  # get 'planes/index'
  # get 'planes/show'
  # get 'manufacturers/index'
  # get 'manufacturers/show'
  resources :planes
  resources :manufacturers
  resources :cart, only: %i[create destroy]
  root to: "manufacturers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
