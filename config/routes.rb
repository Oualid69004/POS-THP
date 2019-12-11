Rails.application.routes.draw do
  root 'static_page#index'
  resources :static_page, only: [:new, :create]
  devise_for :users, controllers: { registrations: "registrations" }
  resources :paymentin, only: [:index]
  resources :paymentout, only: [:index]
  resources :memory_sale, only: [:destroy]
  resources :memory, only: [:destroy]
  resources :purshas
  resources :sales
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
  #resources :employeebranches
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
