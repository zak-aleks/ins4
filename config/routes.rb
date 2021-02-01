Rails.application.routes.draw do
  devise_for :users
  get '/home' => 'users#index'

  root to: 'home#index'

  resources :posts, only: [:new, :show, :create]
end
