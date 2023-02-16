module Api
    module V1
        class ProfileController < ApplicationController

            def create
                
            end
        
            def index
                profile = Profile.all
                render json: profile
            end

        end
    end
end
