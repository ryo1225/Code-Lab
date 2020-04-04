Rails.application.routes.draw do

  get 'homes/top'
  get 'homes/about'
  root to: 'homes#top'


  devise_for :users
  resources :labs
  resources :users, only: [:create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
