Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
  # get 'restaurants', to: 'restaurants#index', as: restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: show_restaurant
  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: new_restaurant
  # post 'restaurants/:id/reviews', to: 'reviews#create'
end
