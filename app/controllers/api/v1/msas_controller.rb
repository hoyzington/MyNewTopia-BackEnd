# frozen_string_literal: true

module Api
  module V1
    class MsasController < ApplicationController
      def index
        msas = Msa.all
        render json: msas, except: %i[created_at updated_at], status: :accepted
      end

      def show
        msa = Msa.find(params[:id])
        render json: msa, except: %i[created_at updated_at], status: :accepted
      end
    end
  end
end
