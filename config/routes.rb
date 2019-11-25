Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :objectives do
      resources :key_results
    end
  end
end
