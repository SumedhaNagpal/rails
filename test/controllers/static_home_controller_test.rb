require 'test_helper'

class StaticHomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get message" do
    get :message
    assert_response :success
  end

  test "should get objective" do
    get :objective
    assert_response :success
  end

  test "should get academics" do
    get :academics
    assert_response :success
  end

  test "should get stats" do
    get :stats
    assert_response :success
  end

  test "should get recruitment_procedure" do
    get :recruitment_procedure
    assert_response :success
  end

  test "should get career_opt" do
    get :career_opt
    assert_response :success
  end

end
