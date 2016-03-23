require 'test_helper'

class Admin::InputsControllerTest < ActionController::TestCase
  setup do
    @admin_input = admin_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_input" do
    assert_difference('Admin::Input.count') do
      post :create, admin_input: { cod: @admin_input.cod, description: @admin_input.description, location: @admin_input.location }
    end

    assert_redirected_to admin_input_path(assigns(:admin_input))
  end

  test "should show admin_input" do
    get :show, id: @admin_input
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_input
    assert_response :success
  end

  test "should update admin_input" do
    put :update, id: @admin_input, admin_input: { cod: @admin_input.cod, description: @admin_input.description, location: @admin_input.location }
    assert_redirected_to admin_input_path(assigns(:admin_input))
  end

  test "should destroy admin_input" do
    assert_difference('Admin::Input.count', -1) do
      delete :destroy, id: @admin_input
    end

    assert_redirected_to admin_inputs_path
  end
end
