require 'test_helper'

class MediasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medias_index_url
    assert_response :success
  end

  test "should get show" do
    get medias_show_url
    assert_response :success
  end

  test "should get new" do
    get medias_new_url
    assert_response :success
  end

  test "should get create" do
    get medias_create_url
    assert_response :success
  end

  test "should get edit" do
    get medias_edit_url
    assert_response :success
  end

  test "should get update" do
    get medias_update_url
    assert_response :success
  end

  test "should get destroy" do
    get medias_destroy_url
    assert_response :success
  end

end
