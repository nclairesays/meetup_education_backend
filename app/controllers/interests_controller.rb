class InterestsController < ApplicationController
    def create
        interest = Interest.create(interest_params)
        render json: interest
    end
    
    def index
        render json: Interest.all
    end
    
    def show
        render json: current_interest
    end
    
    def update
        current_interest.update(interest_params)
        render json: current_interest
    end
    
    def destroy
        current_interest.destroy
        render json: current_interest
    end
    
    def interest_params
        params.require(:interest).permit(:name)
    end
    
    def define_current_interest
        if params[:id]
            @current_interest = Interest.find(params[:id])
        else
            @current_interest = Interest.new
        end
    end
    
    def current_interest
        @current_interest
    end
end
