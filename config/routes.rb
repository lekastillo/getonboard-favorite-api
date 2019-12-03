Rails.application.routes.draw do
  
  resources :favorite_jobs, only: [:index, :show, :create, :destroy]
  
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
