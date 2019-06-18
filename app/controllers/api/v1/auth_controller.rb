class Api::V1::AuthController < ApplicationController
  def login
    # check if my params contain the entered username and password
    user = User.find_by(email: auth_params[:email])
    if user && user.authenticate(auth_params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
      # render json: user
    else
      render json: {errors: "Some ting went wrong."}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "Don't touch my cookies!"}
    end
  end

  private

  def auth_params
    params.require(:user).permit(:email,:password)
  end
end
