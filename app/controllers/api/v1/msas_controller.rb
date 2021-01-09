class Api::V1::MsasController < ApplicationController
  def show
    msa = Msa.find(params[:id])
    render json: msa
  end
end
