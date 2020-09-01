Rails.application.routes.draw do

  devise_for :users

  root 'medias#index'

  resources :medias, only: [:show, :index]
  
  resources :medias do 
    resources :carts, only: [:update]
  end

<<<<<<< HEAD
  Rails.application.routes.draw do
    get "/medias/:carts" => "pages#show"
  end
=======
  resources :carts, only: [:show, :destroy]
>>>>>>> da476c4a504d2da84fd81152177d71f05c69e51d

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
