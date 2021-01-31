class Api::V1::ListsController < ApplicationController
  before_action :set_list, except: [:create, :index]

  def index
    lists = List.all
    render json: lists, only: [:id, :name], status: :accepted
  end

  def show
    render_list
  end

  def create
    list = List.new(list_params)
    if list.save
      render_list
    else
      present_errors_and_status
    end
  end

  def update
    if list.update(list_params)
      render_list
    else
      present_errors_and_status
    end
  end

  def destroy
    list.destroy
    render json: {listId: list.id}
  end

  private

  def set_list
    list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :demands)
  end

  def present_errors_and_status
    render json: { errors: list.errors.full_messages }, status: :unprocessible_entity
  end

  def render_list
    render json: list, except: [:created_at, :updated_at], status: :accepted
  end
end
