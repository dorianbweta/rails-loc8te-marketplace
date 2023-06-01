Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :new, :create, :show, :edit, :update]
  get '/vehicles', to: 'vehicles#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :businesses, only: [:index]
end
