class Api::V1::MsasController < ApplicationController
  def show
    msa = Msa.find_by(msa_code: params[:msa_code])
    render json: msa, except: [:id, :msa_code, :created_at, :updated_at]
  end

  def index
    msas = Msa.all
    render json: msas, only: [:msa_code, :name, :states]
  end
end
