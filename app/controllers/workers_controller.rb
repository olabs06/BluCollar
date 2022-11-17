class WorkersController < ApplicationController
    def index
        render json: Worker.all, status: :ok
    end
    
    def show
        worker = Worker.find_by(id:params[:id])
        if worker
            render json: worker, serializer: AdminSerializer, status: :ok
        else
            render json: {error: "worker not found"}, status: :not_found
        end
    end

    def update
        worker = Worker.find_by(id: params[:id])
        if worker
          worker.update!(update_params)
          render json: worker, status: :ok
        else
          render json: { error: "worker not found" }, status: :not_found
        end
    end

    def destroy
        worker = Worker.find_by(id:params[:id])
        if worker
            worker.destroy
            head :no_content
        else
            render json: {error: "worker not found"}, status: :not_found
        end
    end
   

    private

    def update_params
        params.permit(:job_type)
    end

end
