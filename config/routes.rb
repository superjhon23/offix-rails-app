Rails.application.routes.draw do
  root "departments#index"
  resources :employees
  resources :departments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
