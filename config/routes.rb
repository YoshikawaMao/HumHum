Rails.application.routes.draw do
  get 'genres/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'top' => 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :hums
  resources :users, only: [:index, :show]
  resources :genres, only: [:index]
  get 'genres/food' => 'genres#food'
  get 'genres/humtype' => 'genres#humtype'
  get 'genres/house' => 'genres#house'
end
