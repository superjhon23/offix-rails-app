Rails.application.routes.draw do
  devise_for :employees
  resources :feedbacks
  root "departments#index"
  resources :employees do
    resources :feedbacks, only: :create
  end
  resources :departments do
    resources :feedbacks, only: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
