class Api::V1::UsersController < ApplicationController
  before_action :set_user, except: [:create]

  def show
    render json: [user, user.lists], status: :accepted
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, only: [:id, :username], status: :created
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
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
