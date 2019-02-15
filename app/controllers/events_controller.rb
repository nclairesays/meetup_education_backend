class EventsController < ApplicationController
    before_action :define_current_event

    skip_before_action :authenticate, only: [ :create ]

  

    def create
        event = Event.create(event_params)
        
        event.organizers << current_user
        # event.attendees << current_user
        event.save
        render json: event, methods: [:token]
    end

    # redirect_to???

    def create_attendee
        
        current_event.attendees << current_user
        # event.attendees << current_user
        # event.save
        render json: current_event
    end

    # def organizers
    #     organizerUser = UserEvent.select {
    #          |x| x.user_id === params[:id]
    #      }
    #      arrayOfEventsId = organizerUser.map{|e| e.event_id}
    #     arrayOfEventsId.map{|e| Event.all.select{|s| s.id === e}}
         
    #  end
    
    # def organizers
    #     # Event.all.organizers.find_by(user: params[:id])
    #     Event.all.each do |event| 
    #         event.organizers.each do |organizer| 
    #             if organizer.id === params[:id]
    #                 return organizer
    #             end
    #         end
    #     end
    # end

    
    def index
        render json: Event.all
    end

    def show 
        showevent = Event.all.find(params[:id])
            
        render json: showevent
    end

    def update
        current_event.update(event_params)
        render json: current_event
    end

    def destroy
        current_event.destroy
        render json: current_event
    end

    def define_current_event
        if params[:id]
            @current_event = Event.find(params[:id])
        else
            @current_event = Event.new
        end
    end

    def current_event
        @current_event
    end

    def event_params
        params.permit(:date, :title, :description, :location, :type)
    end

end
