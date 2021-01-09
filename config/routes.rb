Rails.application.routes.draw do
  root 'pages#home'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # get '/auth/facebook/callback', to: 'sessions#omniauth'
  delete 'logout', to: 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :show, :index]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :lists
    end
  end

  namespace :api do
    namespace :v1 do
      resources :msas, only: [:show]
    end
  end
end
