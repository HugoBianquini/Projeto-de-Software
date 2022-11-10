Rails.application.routes.draw do
  resources :carts_products
  resources :addresses_users
  resources :order_picks
  resources :credit_cards
  resources :debit_cards
  resources :tickets
  resources :pixes
  resources :payments
  resources :order_products
  resources :orders
  resources :carts
  resources :positions
  resources :stock_products
  resources :invoices
  resources :suppliers
  resources :stocks
  resources :stores
  resources :addresses
  resources :products
  resources :categories
  resources :users
  get "home/index"  
  root to: "home#index"
end
