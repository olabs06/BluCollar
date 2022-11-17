class AdminsController < ApplicationController
    def create
        admin= Admin.create!(post_params)
        user = User.find(admin[:user_id]) 
        render json: user, serializer: AdminSerializer, status: :created  
    end

    private

    def post_params
        params.permit(:is_admin, :user_id, :worker_id)
    end
end
