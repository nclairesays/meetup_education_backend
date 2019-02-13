class UserArrangementsController < ApplicationController
    def create
        userarrangement = UserArrangements.create(userarrangement_params)
        render json: userarrangement
    end

    def userarrangement_params
        params.permit(:event_id, :user_id)
    end
    
    def define_current_userarrangement
        if params[:id]
            @current_userarrangement = UserArrangements.find(params[:id])
        else
            @current_userarrangement = UserArrangements.new
        end
    end
    
    def current_userarrangement
        @current_userarrangement
    end
end
