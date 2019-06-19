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
    @user = User.find(list_params[:user_id])
    @user.courses.each do |course|
      if course.id === list_params[:course_id] 
        render json: {errors:"Already enrolled in course." }, status: :unprocessible_entity

        return 
      end
    end
    @list = List.create(list_params)

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
