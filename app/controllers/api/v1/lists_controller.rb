class Api::V1::ListsController < ApplicationController
  before_action :set_list, except: [:create, :index]

  def create
    list = List.new(list_params)
    if list.save
      render json: [list, list.msas], status: :accepted
    else
      present_errors_and_status
    end
  end

  def edit
    render json: list
  end

  def update
    if list.update
      render json: [list, list.msas], status: :accepted
    else
      present_errors_and_status
    end
  end

  def show
    render json: [list, list.msas]
  end

  def index
    lists = List.all
    render json: lists, only: [:id, :name]
  end

  def destroy
    list.destroy
  end
end

private

def list_params
  params.require(:list).permit(:name, :demands)
end

def set_list
  list = List.find(params[:id])
end

def present_errors_and_status
  render json: { errors: list.errors.full_messages }, status: :unprocessible_entity
end
