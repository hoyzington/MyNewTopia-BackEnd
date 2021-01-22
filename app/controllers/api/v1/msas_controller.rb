class Api::V1::MsasController < ApplicationController
  def index
    msas = Msa.all
    render json: msas, except: [:created_at, :updated_at]
  end
end
