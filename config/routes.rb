Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'houses#index'
      resources :users, only: [:create, :index]
      post '/login', to: 'sessions#create'
      post '/sessions', to: 'sessions#create'

      resources :houses, only: [:index, :show] do
        resources :characters, only: [:index]
      end
      resources :characters, only: [:index, :show] do
        member do
          get :houses
        end
      end
    end
  end
end
