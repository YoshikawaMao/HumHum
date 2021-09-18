require 'test_helper'

class HumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hums_index_url
    assert_response :success
  end

  test "should get show" do
    get hums_show_url
    assert_response :success
  end

  test "should get edit" do
    get hums_edit_url
    assert_response :success
  end

  test "should get new" do
    get hums_new_url
    assert_response :success
  end

end
