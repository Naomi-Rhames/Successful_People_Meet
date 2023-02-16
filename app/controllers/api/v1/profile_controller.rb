module Api
    module V1
        class ProfileController < ApplicationController

            def create
                new_profile = Profile.new(profile_params)
                if new_profile.save
                    render json: new_profile
                else
                    render json: {error: user.error.messages}, status: 422
                end 
            end
        
            def index
                profile = Profile.all
                render json: profile
            end

            private

            def profile_params
                params.permit(:first_name, :last_name, :age, :profile_image, :status, :about_me, :occupation, :hobbies, :location)
            end

        end
    end
end
