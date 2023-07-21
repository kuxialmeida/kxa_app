Rails.application.routes.draw do
  get 'reviews/new'
  # get 'products/name'
  # get 'products/description:text'
  # get 'products/price:decimal'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
  resources :products do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
