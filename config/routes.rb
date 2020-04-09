Rails.application.routes.draw do
root to: 'homes#top'
  devise_for :users

  resources :users, only: [:create, :show, :edit, :update]
  resources :labs
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
