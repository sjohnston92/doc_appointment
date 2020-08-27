Rails.application.routes.draw do
  root 'users#index'

  resources :doctors 
  resources :users do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end

end
