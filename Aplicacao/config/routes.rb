Rails.application.routes.draw do
  resources :order_picks
  resources :client_addresses
  resources :credit_cards
  resources :debit_cards
  resources :tickets
  resources :pixes
  resources :payments
  resources :order_products
  resources :cart_products
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
