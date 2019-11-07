require 'test_helper'

class V1::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_home_index_url
    assert_response :success
  end

end
