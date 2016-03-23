require 'test_helper'

class Admin::ReturnsControllerTest < ActionController::TestCase
  setup do
    @admin_return = admin_returns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_returns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_return" do
    assert_difference('Admin::Return.count') do
      post :create, admin_return: { amount: @admin_return.amount, cod: @admin_return.cod, description: @admin_return.description, state: @admin_return.state }
    end

    assert_redirected_to admin_return_path(assigns(:admin_return))
  end

  test "should show admin_return" do
    get :show, id: @admin_return
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_return
    assert_response :success
  end

  test "should update admin_return" do
    put :update, id: @admin_return, admin_return: { amount: @admin_return.amount, cod: @admin_return.cod, description: @admin_return.description, state: @admin_return.state }
    assert_redirected_to admin_return_path(assigns(:admin_return))
  end

  test "should destroy admin_return" do
    assert_difference('Admin::Return.count', -1) do
      delete :destroy, id: @admin_return
    end

    assert_redirected_to admin_returns_path
  end
end
