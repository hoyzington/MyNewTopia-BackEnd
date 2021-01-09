class Api::V1::ListsController < ApplicationController
  before_action :set_list, except: [:create, :index]

  def create
    list = List.create(list_params)
    render json: list
  end

  def show
    render json: list
    render json: list.msas
  end

  def index
    lists = List.all
    render json: lists
  end

  def edit
    render json: list
  end

  def update
    list.update(list_params)
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
