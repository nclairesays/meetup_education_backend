Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do   
  
      resources :event_interests
      resources :user_interests
      resources :interests
      resources :user_arrangements
      resources :user_events
      resources :events
      resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
