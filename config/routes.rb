Rails.application.routes.draw do
  resources :bicycles, only: [:index, :create]
  
  resources :favourites, only: [:index, :create]
  delete 'favourites', to: 'favourites#delete'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
