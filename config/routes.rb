Rails.application.routes.draw do

  resources :charges, only: [:create,:new], path: 'reglement'

  devise_for :users

  root 'medias#index'

<<<<<<< HEAD
=======
  resources :medias, only: [:show, :index], path: 'chatons'
>>>>>>> master
  
  resources :medias do 
    resources :carts, only: [:update]
  end

  resources :carts, only: [:show, :destroy], path: 'ma_litiere_digitale'

  resources :orders, only: [:create]

  resources :members, only: [:show, :update], path: 'mon_profil'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end