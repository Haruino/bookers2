Rails.application.routes.draw do
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  devise_for :users
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :books, only: [:index, :create, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
