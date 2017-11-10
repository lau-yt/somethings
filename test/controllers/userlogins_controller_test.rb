require 'test_helper'

class UserloginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userlogin = userlogins(:one)
  end

  test "should get index" do
    get userlogins_url
    assert_response :success
  end

  test "should get new" do
    get new_userlogin_url
    assert_response :success
  end

  test "should create userlogin" do
    assert_difference('Userlogin.count') do
      post userlogins_url, params: { userlogin: { contr: @userlogin.contr, email: @userlogin.email, on: @userlogin.on } }
    end

    assert_redirected_to userlogin_url(Userlogin.last)
  end

  test "should show userlogin" do
    get userlogin_url(@userlogin)
    assert_response :success
  end

  test "should get edit" do
    get edit_userlogin_url(@userlogin)
    assert_response :success
  end

  test "should update userlogin" do
    patch userlogin_url(@userlogin), params: { userlogin: { contr: @userlogin.contr, email: @userlogin.email, on: @userlogin.on } }
    assert_redirected_to userlogin_url(@userlogin)
  end

  test "should destroy userlogin" do
    assert_difference('Userlogin.count', -1) do
      delete userlogin_url(@userlogin)
    end

    assert_redirected_to userlogins_url
  end
end
