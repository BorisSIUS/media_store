Rails.application.routes.draw do

  devise_for :users

  root 'medias#index'

  resources :medias
  resources :medias do 
    resources :carts
  end

  Rails.application.routes.draw do
    get "/medias/:carts" => "pages#show"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
