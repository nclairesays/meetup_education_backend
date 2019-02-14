class UserInterestsController < ApplicationController
    def create
        userinterests = UserInterests.create(userinterests_params)
        render json: userinterests
    end

    def userinterests_params
        params.permit(:interest_id, :user_id)
    end
    
    def define_current_userinterests
        if params[:id]
            @current_userinterests = UserInterests.find(params[:id])
        else
            @current_userinterests = UserInterests.new
        end
    end
    
    def current_userinterests
        @current_userinterests
    end
end
