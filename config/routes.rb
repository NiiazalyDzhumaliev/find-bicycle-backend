Rails.application.routes.draw do
  resources :bicycles, only: [:index, :create]
  post 'auth/login', to 'authentication#authenticate'
end
