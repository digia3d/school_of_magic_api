Rails.application.routes.draw do
  root to: proc { [200, {}, ['School of Magic API is running 🪄']] }
    
  namespace :api do
    namespace :v1 do
      # Users routes
      resources :users, only: [:create, :index]

      # Login routes
      post '/login', to: 'sessions#create'

      # Houses routes
      resources :houses, only: [:index, :show] do
        # Custom route to get characters by house name
        # Example: GET /api/v1/houses/Gryffindor/characters
        get 'characters', to: 'characters#by_house'
      end

      # Characters routes
      resources :characters, only: [:index, :show, :create] do
        # Optional route to see which houses a character belongs to
        end
      end
    end
  end
end
