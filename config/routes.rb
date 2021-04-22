Rails.application.routes.draw do
  resources :category, only: %i[index show]
  resources :product, only: %i[index show]
end
