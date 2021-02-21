Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'signup', to: 'users#create'
      post 'login', to: 'users#show'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :filters, only: [:destroy]
      post 'users/:user_id/filters', to: 'filters#create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'metro-areas', to: 'msas#index'
    end
  end
end
