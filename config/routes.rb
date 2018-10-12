Rails.application.routes.draw do
  get 'vehicles', to:'vehicles#index'
  
  root to: 'vehicles#index'
  get 'vehicles/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about', to: 'pages#about', as: 'about'
  get 'about', to: 'pages#about'
end
