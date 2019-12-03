Rails.application.routes.draw do
  root 'static_page#index'
  devise_for :users
  resources :receipts
  resources :paymentsuppliers
  resources :payments
  resources :stockcurrents
  resources :stocklevels
  resources :stockins
  resources :ticketlines
  resources :tickets
  resources :closedcashes
  resources :screens
  resources :rolepermissions
  resources :roles
  resources :employeebranches
  resources :employees
  resources :customers
  resources :suppliers
  resources :typeproducts
  resources :categories
  resources :products
  resources :businesslines
  resources :branches
  resources :companies
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
