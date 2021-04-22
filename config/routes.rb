Rails.application.routes.draw do  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'session/index'
  get 'register/index'
  get 'register/show'
  root to: "home#index"
  resources :category, only: %i[index show]
  resources :product, only: %i[index show]
end
