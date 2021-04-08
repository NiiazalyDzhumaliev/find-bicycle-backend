Rails.application.routes.draw do
  resources :bicycles, only: [:index, :create]
  
  resources :favourites
  
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
