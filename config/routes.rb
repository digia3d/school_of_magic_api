Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
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
