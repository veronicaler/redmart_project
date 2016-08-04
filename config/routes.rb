Rails.application.routes.draw do
post '/product/:id/review/new', to: 'review#create'
get 'products/index'
get 'products/show'
get 'products/new'
get 'products/edit'
root 'static_pages#home'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#static pages routes
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get 'products', to: 'products#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :products
  resources :products do
  resources :reviews
  # resources :reviews,  only: [:create, :destroy]
end
resources :reviews
end
