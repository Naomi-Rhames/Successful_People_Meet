module Api
    module V1
        class UsersController < ApplicationController
           
            def create
                user = User.new(user_params)
                if user.save
                    render_user_token(user)
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
            if user == fetch_user    
               render json: user
            else
                render json: {error: user.errors.full_messages}
               end
            end     

            private
            
            def user_params
                params.permit(:email, :phone_number, :password)
            end    

        end
    end
end
