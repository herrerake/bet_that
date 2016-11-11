require 'test_helper'

class AwardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get award_index_url
    assert_response :success
  end

  test "should get show" do
    get award_show_url
    assert_response :success
  end

  test "should get new" do
    get award_new_url
    assert_response :success
  end

  test "should get edit" do
    get award_edit_url
    assert_response :success
  end

end
