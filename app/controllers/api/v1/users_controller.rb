class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = find_user
    render json: @user, status: :accepted
  end

  def create
		user = User.new(user_params)

		if user.save
			token = encode_token(user.id)

			render json: {user: UserSerializer.new(user), token: token}
		else
			render json: {errors: user.errors.full_messages}
		end
	end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def user_params
    params.permit(:first_name,:last_name,:bio,:email,:password,:img_url)
  end

  t.string "first_name"
  t.string "last_name"
  t.string "email"
  t.string "password_digest"
  t.string "bio"
  t.string "img_url"
 
  def find_user
    @user = User.find(params[:id])
  end
end
