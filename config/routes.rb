Rails.application.routes.draw do
  # get 'planes/index'
  # get 'planes/show'
  # get 'manufacturers/index'
  # get 'manufacturers/show'

  resources :planes, only: %i[index show]
  resources :manufacturers, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
