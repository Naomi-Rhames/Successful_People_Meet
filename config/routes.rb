Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resourses :users
    end
  end
end
