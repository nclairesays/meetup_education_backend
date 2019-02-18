class UserEventsController < ApplicationController
    # before_action :define_current_userevent

    skip_before_action :authenticate, only: [ :create ]

    def create
        userevent = UserEvent.create(userevent_params)
        # userevent.user = current_user
        # userevent.event = current_event
        #    byebug

        render json: userevent, methods: [ :token ]
    end

    # def organizers
    #    organizerUser = UserEvent.select {
    #         |x| x.user_id === params[:id]
    #     }
    #     arrayOfEventsId = organizerUser.map{|e| e.event_id}
    #     arrayOfEventsId.map{|e| Event.all.select{|s| s.id === e}}
        
    #     # UserEvent.all.each do |ue|
    #     #     Event.all.each do |event| 
    #     #         event.organizers.each do |organizer| 
    #     #         if organizer.id === params[:id]
    #     #             return organizer
    #     #         end
    #     #     end
    #     # end
    #  end


    def userevent_params
        params.permit(:event_id, :user_id)
    end
    
    def define_current_userevent
        if params[:id]
            @current_userevent = UserEvent.find(params[:id])
        else
            @current_userevent = UserEvent.new
        end
    end
    
    def current_userevent
        @current_userevent
    end
end
