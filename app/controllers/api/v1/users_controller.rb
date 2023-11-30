class Api::V1::UsersController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      render json: :show
    else
      render json: @user.errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
