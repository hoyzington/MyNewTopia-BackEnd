require 'test_helper'

class Api::V1::MsaControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_msa_show_url
    assert_response :success
  end

end
