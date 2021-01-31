class Api::V1::UserController < ApplicationController
  before_action :set_user, except: [:create]
  # has_secure_password

  def show
    render json: [user, user.lists], status: :accepted
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, only: [:id, :username], status: :accepted
    else
      present_errors_and_status
    end
  end

  def update
    if user.update(user_params)
      render json: [user, user.msas], status: :accepted
    else
      present_errors_and_status
    end
  end

  def destroy
    user.destroy
    render json: {userId: user.id}
  end

  private

  def set_user
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :demands)
  end
end
