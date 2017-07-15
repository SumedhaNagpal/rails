require 'test_helper'

class StudentHomeControllerTest < ActionController::TestCase
  test "should get feed" do
    get :feed
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get notification" do
    get :notification
    assert_response :success
  end

  test "should get write_blog" do
    get :write_blog
    assert_response :success
  end

  test "should get my_blogs" do
    get :my_blogs
    assert_response :success
  end

end
