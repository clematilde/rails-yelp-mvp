Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show"
  # post "restaurants", to: "restaurants#create"

  resources :restaurants, only: [:index, :new, :create, :show] do
  resources :reviews, only: [:new]
  end

end
