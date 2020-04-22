Rails.application.routes.draw do
root to: 'homes#top'
  devise_for :users

  resources :users, only: [:create, :show, :edit, :update] do
  end
  resources :labs do
  	resource :favorites, only: [:create, :destroy]
  	resource :lab_comments, only: [:create, :destroy]
    resource :attends, only: [:create, :destroy]
  end
  get 'homes/top'
  get 'homes/about'
  get "users/:id/favorites" => "users#favorites"
  get 'search/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
