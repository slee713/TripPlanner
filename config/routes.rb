Rails.application.routes.draw do
  resources :countries 
  resources :states
  resources :states, only: [:show] do
    resources :cities, only: [:index]
  end
  resources :cities, only: [:show] do
    resources :locations, only: [:index, :show, :edit, :update]
  end
   

  # resources :locations
  resources :trips
  resources :trip_locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
