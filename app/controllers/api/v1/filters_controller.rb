# frozen_string_literal: true

module Api
  module V1
    class FiltersController < ApplicationController
      before_action :set_filter, except: %i[create index]

      def index
        filters = Filter.all
        render json: filters, except: [:updated_at], status: :accepted
      end

      def show
        render_filter
      end

      def create
        user = User.find(params[:user_id])
        @filter = user.filters.build(filter_params)
        if @filter.save
          render_filter
        else
          present_errors_and_status
        end
      end

      def update
        if @filter.update(filter_params)
          render_filter
        else
          present_errors_and_status
        end
      end

      def destroy
        @filter.destroy
        render json: { id: @filter.id }
      end

      private

      def set_filter
        @filter = Filter.find(params[:id])
      end

      def filter_params
        params.require(:filter).permit(:id, :name, :items, :vals)
      end

      def present_errors_and_status
        render json: { errors: @filter.errors.full_messages }, status: :unprocessible_entity
      end

      def render_filter
        render json: @filter, except: [:updated_at], status: :accepted
      end
    end
  end
end
