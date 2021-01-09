Rails.application.routes.draw do
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
