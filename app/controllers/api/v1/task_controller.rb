class Api::V1::TaskController < ApplicationController
  def index 
    @tasks = Task.all 
    render json: @tasks
  end

  def show 
    @task = find_task
    render json:@task
  end

  def update
    # byebug
    @task = find_task
    @task.update(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
    end
  end
  
  private
 
  def task_params
    params.require(:task).permit(:status,:list_id)
  end
 
  def find_task
    @task = Task.find(params[:id])
  end
end
