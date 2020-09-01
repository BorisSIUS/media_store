require 'test_helper'

class ShowControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get show_update_url
    assert_response :success
  end

  test "should get destroy" do
    get show_destroy_url
    assert_response :success
  end

end
