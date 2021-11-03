require "test_helper"

class WagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wages_index_url
    assert_response :success
  end

  test "should get edit" do
    get wages_edit_url
    assert_response :success
  end

  test "should get show" do
    get wages_show_url
    assert_response :success
  end

  test "should get new" do
    get wages_new_url
    assert_response :success
  end
end
