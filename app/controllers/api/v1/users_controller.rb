module Api
    module V1
        class UsersController < ApplicationController
           

            def index 
                users = User.all
                render json: users 
            end 
            
            def show 
               user = User.find(params[:id])      
               render json:user    
            end     

            def create

            end  
            
            def user_params
                params.permit(:email, :phone_number, :password)
            end    
        end
    end
end
