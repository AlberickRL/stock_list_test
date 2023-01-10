Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "packages#index"
  resources :packages, only: %i[index new update]
  resources :families, only: %i[index edit update]
end
