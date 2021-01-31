class Api::V1::MsasController < ApplicationController
  def index
    msas = Msa.all
    render json: msas, except: [:created_at, :updated_at], status: :accepted
  end

  def show
    msa = Msa.find(params[:id])
    render json: msa, except: [:created_at, :updated_at], status: :accepted
  end
end
