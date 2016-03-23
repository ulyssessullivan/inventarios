require 'test_helper'

class Admin::OutputsControllerTest < ActionController::TestCase
  setup do
    @admin_output = admin_outputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_outputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_output" do
    assert_difference('Admin::Output.count') do
      post :create, admin_output: { amount: @admin_output.amount, cod: @admin_output.cod, description: @admin_output.description }
    end

    assert_redirected_to admin_output_path(assigns(:admin_output))
  end

  test "should show admin_output" do
    get :show, id: @admin_output
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_output
    assert_response :success
  end

  test "should update admin_output" do
    put :update, id: @admin_output, admin_output: { amount: @admin_output.amount, cod: @admin_output.cod, description: @admin_output.description }
    assert_redirected_to admin_output_path(assigns(:admin_output))
  end

  test "should destroy admin_output" do
    assert_difference('Admin::Output.count', -1) do
      delete :destroy, id: @admin_output
    end

    assert_redirected_to admin_outputs_path
  end
end
