require 'test_helper'

class RemembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remember = remembers(:one)
  end

  test "should get index" do
    get remembers_url
    assert_response :success
  end

  test "should get new" do
    get new_remember_url
    assert_response :success
  end

  test "should create remember" do
    assert_difference('Remember.count') do
      post remembers_url, params: { remember: { email: @remember.email, name: @remember.name, phone: @remember.phone } }
    end

    assert_redirected_to remember_url(Remember.last)
  end

  test "should show remember" do
    get remember_url(@remember)
    assert_response :success
  end

  test "should get edit" do
    get edit_remember_url(@remember)
    assert_response :success
  end

  test "should update remember" do
    patch remember_url(@remember), params: { remember: { email: @remember.email, name: @remember.name, phone: @remember.phone } }
    assert_redirected_to remember_url(@remember)
  end

  test "should destroy remember" do
    assert_difference('Remember.count', -1) do
      delete remember_url(@remember)
    end

    assert_redirected_to remembers_url
  end
end
