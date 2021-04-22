Rails.application.routes.draw do  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'session/index'
  get 'register/index'
  get 'register/show'

  root to: "home#index"

  get 'sale', to: "product#sale"
  get 'recent', to: "product#recent"
  get 'search', to: "product#search"
  get 'advanced', to: "product#advanced"
  
  resources :category, only: %i[index show]
  resources :product, only: %i[index show]
  resources :about, only: %i[index show]
  

end
