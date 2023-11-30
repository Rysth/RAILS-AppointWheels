Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [] do
        resources :rentals
      end
      resources :cars
    end
  end
end
