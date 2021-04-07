Rails.application.routes.draw do
  resources :bicycles, only: [:index, :create]
end
