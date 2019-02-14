class EventInterestsController < ApplicationController
    def create
        eventinterest = EventInterest.create(eventinterest_params)
        render json: eventinterest
    end

    def eventinterest_params
        params.permit(:event_id, :interest_id)
    end
    
    def define_current_eventinterest
        if params[:id]
            @current_eventinterest = EventInterest.find(params[:id])
        else
            @current_eventinterest = EventInterest.new
        end
    end
    
    def current_eventinterest
        @current_eventinterest
    end
end
