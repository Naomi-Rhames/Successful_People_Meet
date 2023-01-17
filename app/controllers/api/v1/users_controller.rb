module Api
    module V1
        class UsersController < ApplicationController
           
            def create
                user = User.new(user_params)
                if user.save
                    render json: UserSerializer.new(user).serialized_json
                else
                    render json: {error: user.error.messages}, status: 422
                end
            end

            def index 
                user = User.all
                render json: UserSerializer.new(user).serialized_json
            end 
            
            def show 
               user = User.find(params[:id])      
               render json: AirlineSerializer.new(user).serialized_json  
            end     

            private
            
            def user_params
                params.permit(:email, :phone_number, :password)
            end    

        end
    end
end
