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
        # GET /api/v1/houses/:house_id/characters
        get 'characters', to: 'characters#by_house'
      end

      # Characters
      resources :characters, only: [:index, :show, :create]
    end
  end
end

