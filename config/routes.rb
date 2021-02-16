Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'index', to: 'activities#index'
  # get 'show', to: 'activities#show'
  # post 'create', to: 'activities#create'
  # get 'new', to: 'activities#new'

  resources :activities, only: [:index, :show, :create, :new] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings do
    member { patch :accept }
    member { patch :decline }
    member { patch :cancel }
  end

  resource :profile, only: [:show]
end

