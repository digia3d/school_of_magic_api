Rails.application.routes.draw do
  root to: proc { [200, {}, ['School of Magic API is running 🪄']] }

  namespace :api do
    namespace :v1 do
      # Users
      resources :users, only: [:create, :index]

      # Login
      post '/login', to: 'sessions#create'

      # Houses
      resources :houses, only: [:index, :show] do
        # Characters for a specific house
        get 'characters', to: 'houses#characters', on: :member
      end

      # Characters
      resources :characters, only: [:index, :show, :create]
    end
  end
end
