# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class ListControllerTest < ActionDispatch::IntegrationTest
      test 'should get create' do
        get api_v1_list_create_url
        assert_response :success
      end

      test 'should get show' do
        get api_v1_list_show_url
        assert_response :success
      end

      test 'should get index' do
        get api_v1_list_index_url
        assert_response :success
      end

      test 'should get edit' do
        get api_v1_list_edit_url
        assert_response :success
      end

      test 'should get update' do
        get api_v1_list_update_url
        assert_response :success
      end

      test 'should get destroy' do
        get api_v1_list_destroy_url
        assert_response :success
      end
    end
  end
end
