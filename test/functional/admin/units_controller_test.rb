require 'test_helper'

class Admin::UnitsControllerTest < ActionController::TestCase
  setup do
    @admin_unit = admin_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_unit" do
    assert_difference('Admin::Unit.count') do
      post :create, admin_unit: { nom: @admin_unit.nom, status: @admin_unit.status, symbol: @admin_unit.symbol }
    end

    assert_redirected_to admin_unit_path(assigns(:admin_unit))
  end

  test "should show admin_unit" do
    get :show, id: @admin_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_unit
    assert_response :success
  end

  test "should update admin_unit" do
    put :update, id: @admin_unit, admin_unit: { nom: @admin_unit.nom, status: @admin_unit.status, symbol: @admin_unit.symbol }
    assert_redirected_to admin_unit_path(assigns(:admin_unit))
  end

  test "should destroy admin_unit" do
    assert_difference('Admin::Unit.count', -1) do
      delete :destroy, id: @admin_unit
    end

    assert_redirected_to admin_units_path
  end
end
