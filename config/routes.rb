Rails.application.routes.draw do

  devise_for :users

  root 'medias#index'

  resources :medias
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
