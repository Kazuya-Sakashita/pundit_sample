Rails.application.routes.draw do
    devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'homes#index'
  resources :users
  resources :posts
  resources :wages
  resources :homes, only: %i[index]

end
