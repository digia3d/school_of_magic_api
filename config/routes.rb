Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Users routes
      resources :users, only: [:create, :index]

      # Login routes
      post '/login', to: 'sessions#create'
      post '/sessions', to: 'sessions#create'

      # Houses routes
      resources :houses, only: [:index, :show] do
        # Custom route to get characters by house name
        # Example: GET /api/v1/houses/Gryffindor/characters
        get ':house_name/characters', to: 'characters#by_house', on: :collection
      end

      # Characters routes
      resources :characters, only: [:index, :show, :create] do
        # Optional route to see which houses a character belongs to
        member do
          get :houses
        end
      end
    end
  end
end
