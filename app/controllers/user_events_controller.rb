class UserEventsController < ApplicationController
    def create
        userevent = UserEvent.create(userevent_params)
        render json: userevent
    end

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
