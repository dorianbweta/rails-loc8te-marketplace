Rails.application.routes.draw do
  devise_for :users

  # root "articles#index"
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :vehicles do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show update]
  resources :businesses, only: %i[index new create show]
end
