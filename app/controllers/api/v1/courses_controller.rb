class Api::V1::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses
  end

  def update
    @course.update(course_params)
    if @course.save
      render json: @course, status: :accepted
    else
      render json: { errors: @course.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def course_params
    params.permit(:title,:description,:img_url,:subject)
  end
 
  def find_course
    @course = Course.find(params[:id])
  end
end
