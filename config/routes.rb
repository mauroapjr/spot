Rails.application.routes.draw do

  get 'index/products' => 'index#products'
  resources :create_products
  resources :create_users
  resources :users
  resources :products
  get 'about/index' => 'about#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root to: 'index#products'

  resources :products, only: [:index, :show]
  
  
  resource :cart, only: [:show] do
    post   :add_item
    post   :remove_item
  end

  resources :orders, only: [:create, :show]

  
end
