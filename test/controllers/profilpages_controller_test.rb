require 'test_helper'

class ProfilpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profilpages_new_url
    assert_response :success
  end

  test "should get create" do
    get profilpages_create_url
    assert_response :success
  end

end
