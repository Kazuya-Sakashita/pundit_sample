Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :users, only: %i[index show]
  resources :posts
  resources :homes, only: %i[index]

end
