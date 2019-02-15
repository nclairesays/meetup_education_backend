Rails.application.routes.draw do
      resources :events 
     
      resources :users
      resources :interests
      resources :auth
      resources :user_events
      # match 'events/create_organizer' => 'events#create_organizer', :via => [:get, :post]

      resources :user_arrangements
      # match 'events/create_attendee' => 'events#create_attendee', :via => [:get, :post]

      post '/events/:id/create_attendee', to: 'events#create_attendee'
     

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
  
end
