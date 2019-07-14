require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flights_index_url
    assert_response :success
  end

  test "should get show" do
    get flights_show_url
    assert_response :success
  end

  test "should get create" do
    get flights_create_url
    assert_response :success
  end

  test "should get edit" do
    get flights_edit_url
    assert_response :success
  end

  test "should get delete" do
    get flights_delete_url
    assert_response :success
  end

end
