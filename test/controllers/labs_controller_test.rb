require 'test_helper'

class LabsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get labs_index_url
    assert_response :success
  end

  test "should get show" do
    get labs_show_url
    assert_response :success
  end

  test "should get new" do
    get labs_new_url
    assert_response :success
  end

  test "should get edit" do
    get labs_edit_url
    assert_response :success
  end

end
