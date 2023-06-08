Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
      
    namespace :api do
      namespace :v1 do
        defaults format: :json do
          get 'home/index', to: 'home#index'
        end
      end
    end
      
  # Defines the root path route ("/")
  # root "articles#index"
end
