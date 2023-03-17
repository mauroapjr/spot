Rails.application.routes.draw do
  get 'about/index' 
  root to: 'products#index'


  get 'index/products' => 'index#products'
  resources :create_products
  resources :create_users
  resources :users
  resources :products

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :products, only: [:index, :show]
  
  
  resource :cart, only: [:show] do
    post   :add_item
    post   :remove_item
  end

  resources :orders, only: [:create, :show]

  
end
