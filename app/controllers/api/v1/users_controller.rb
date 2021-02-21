class Api::V1::UsersController < ApplicationController
  before_action :set_user, except: [:create]

  def show
    # byebug
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      render json: { id: user.id, username: user.username, lists: user.lists}, status: :accepted
    else
      render json: { message: "Incorrect username and/or password" }
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { id: user.id, username: user.username, filters: [] }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :not_acceptable
    end
  end

  def update
    if user.update(user_params)
      render json: [user, user.msas], status: :updated
    else
      render json: { errors: user.errors.full_messages }, status: :not_acceptable
    end
  end

  def destroy
    user.destroy
    render json: {userId: user.id}, status: :destroyed
  end

  private

  def set_user
    user = User.find_by(username: params[:username])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
