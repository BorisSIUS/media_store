Rails.application.routes.draw do


  get 'profilpages/new'
  get 'profilpages/create'

  
  devise_for :users

  root 'medias#index'

  resources :medias, only: [:show, :index]
  
  resources :medias do 
    resources :carts, only: [:update]
  end

  resources :carts, only: [:show, :destroy]

  resources :orders, only: [:create]

  resources :members, only: [:show, :update]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end