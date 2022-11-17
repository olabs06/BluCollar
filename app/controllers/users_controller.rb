class UsersController < ApplicationController
    def index
        render json: User.all, status: :ok
    end
    
    def show
        user = User.find_by(id:params[:id])
        if user
            render json: user, serializer: AdminSerializer, status: :ok
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end

    def destroy
        user = User.find_by(id:params[:id])
        if user
            user.destroy
            head :no_content
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end

    private

    def find_user
        User.find(params[:id])
    end
end
