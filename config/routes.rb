Rails.application.routes.draw do
  resources :images
  resources :themes
  resources :movies
  resources :halls
  resources :seances
  resources :statuses
  resources :tickets
  resources :users
  root 'main#index'

  get 'main/index'

  get 'main/help'

  get 'main/about'

  get 'main/contacts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
