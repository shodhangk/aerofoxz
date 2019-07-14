require 'test_helper'

class AeroplanesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aeroplanes_index_url
    assert_response :success
  end

  test "should get show" do
    get aeroplanes_show_url
    assert_response :success
  end

  test "should get create" do
    get aeroplanes_create_url
    assert_response :success
  end

  test "should get edit" do
    get aeroplanes_edit_url
    assert_response :success
  end

  test "should get delete" do
    get aeroplanes_delete_url
    assert_response :success
  end

end
