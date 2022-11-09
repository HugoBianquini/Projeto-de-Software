Rails.application.routes.draw do
  resources :produtos
  resources :categoria
  resources :users
  get "home/index"  
  root to: "home#index"
end
