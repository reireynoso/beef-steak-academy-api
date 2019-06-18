class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists
  end

  def show 
    @list = find_list 
    render json: @list, status: :accepted
  end 

  def create 
    @list = List.create(list_params)
    # @user = User.find(list_params.user_id)
    if @list.valid?
      ### copy assignments into tasks
      @list.assignments.each { |assignment|  
        task = {
          title:assignment.title,
          description:assignment.description,
          content:assignment.content,
          video_url:assignment.video_url,
          list_id:@list.id,
          status:"static"
        }
        Task.create(task)
      }
      ###
      render json: @list, status: :accepted 
    else 
      render json:{errors: @list.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def list_params
    params.permit(:course_id,:user_id)
  end
 
  def find_list
    @list = List.find(params[:id])
  end
end
