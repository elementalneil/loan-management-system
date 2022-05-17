Rails.application.routes.draw do
  devise_for :users
  resources :applications
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/about'
  get 'home/bank_details'
  # Defines the root path route ("/")
end
