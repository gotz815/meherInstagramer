require 'test_helper'

class GazousControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get gazous_top_url
    assert_response :success
  end

  test "should get result" do
    get gazous_result_url
    assert_response :success
  end

end
