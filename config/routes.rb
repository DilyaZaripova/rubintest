Rails.application.routes.draw do
  root to: 'main#index'
  get '/signup' => 'users#new', as: 'signup'
  get '/signin' => 'sessions#new', as: 'signin'
  delete '/signout' => 'sessions#destroy', as: 'signout'

  get 'works/index' => 'works#index', via:'get'

  #get 'works/select_images'

  #root to: 'works#index'
  get '/works/(:id)' => 'works#select_images', via:'get'

  resources :books
  resources :reviews
  resources :genres
  resources :users
  resources :values
  resources :images
  resources :themes

  resources :sessions, only: [:new, :create, :destroy]

  get 'main/index'

  get 'main/help'

  get 'main/about'

  get 'main/contacts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
