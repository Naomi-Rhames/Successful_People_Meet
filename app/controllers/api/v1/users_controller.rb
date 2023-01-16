module Api
    module V1
        class UsersController < ApplicationController
           
            def create
                user = User.create(user_params)
                if user.save
                    render json: UserSerializer.new(user).serialized_json
                else
                    render json: {error: user.error.messages}, status: 422
                end
            end

            def index 
                users = User.all
                render json: users 
            end 
            
            def show 
               user = User.find(params[:id])      
               render json:user    
            end     

            
            def user_params
                params.permit(:email, :phone_number, :password)
            end    
        end
    end
end
