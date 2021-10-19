# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class UserControllerTest < ActionDispatch::IntegrationTest
      test 'should get create' do
        get api_v1_user_create_url
        assert_response :success
      end

      test 'should get edit' do
        get api_v1_user_edit_url
        assert_response :success
      end

      test 'should get update' do
        get api_v1_user_update_url
        assert_response :success
      end

      test 'should get destroy' do
        get api_v1_user_destroy_url
        assert_response :success
      end
    end
  end
end
