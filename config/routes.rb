# config/routes.rb
Rails.application.routes.draw do
  resources :movies, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index]
    end
  end
end
