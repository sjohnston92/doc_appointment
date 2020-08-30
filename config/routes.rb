Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  
  
  resources :doctors 
  resources :users do
  resources :appointments, only: [:index, :new, :create, :destroy]
  end

end
